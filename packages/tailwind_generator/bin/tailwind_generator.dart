import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:tailwind_generator/model/color.dart';
import 'package:tailwind_generator/model/config.dart';
import 'package:tailwind_generator/model/tailwind_size.dart';

Future<void> main(List<String> args) async {
  final parser = ArgParser() //
    ..addOption('config', help: 'Path to config file', defaultsTo: 'tailwind.config.json')
    ..addOption('dest', abbr: 'd', help: 'Path to generated files', defaultsTo: 'lib/tailwind');

  final result = parser.parse(args);
  final configPath = result.option('config')!;
  final destination = result.option('dest')!;

  await Directory(destination).create(recursive: true);

  final configString = await File(configPath).readAsString();
  final configJson = jsonDecode(configString);
  final config = TailwindConfig.fromJson(configJson);

  await buildColors(config.colors, destination);
  await buildSizes(config, destination);
  await buildTw(config, destination);
}

Future<void> buildColors(Map<String, ColorBase> colors, String destination) async {
  final library = Library(
    (def) => def //
      ..directives.add(Directive.import('package:flutter/material.dart'))
      ..body.add(
        Class(
          (def) => def //
            ..name = 'TailwindColors'
            ..constructors.add(Constructor((def) => def.name = '_'))
            ..fields.addAll([
              for (final color in colors.entries)
                Field(
                  (def) => def //
                    ..static = true
                    ..modifier = FieldModifier.constant
                    ..name = color.key
                    ..assignment = createCodeForColor(color.value, colors),
                )
            ]),
        ),
      ),
  );

  final emitter = DartEmitter();
  final code = DartFormatter().format('${library.accept(emitter)}');

  await File(p.join(destination, 'tailwind_colors.dart')).writeAsString(code);
}

Code? createCodeForColor(ColorBase color, Map<String, ColorBase> parsed) {
  return switch (color) {
    Color color => Code('Color(0x${color.value.toRadixString(16).toUpperCase()})'),
    MaterialColor color => Code(
        'MaterialColor(0x${color.shades[500]!.value.toRadixString(16).toUpperCase()}, '
        '<int, Color>{'
        '${color.shades.entries.map((e) => //
            '${e.key}: Color(0x${e.value.value.toRadixString(16).toUpperCase()})').join(', ')},'
        '})',
      ),
    RedirectColor color => createCodeForColor(color.resolve(parsed) ?? Color(0x0), parsed)
  };
}

Future<void> buildSizes(TailwindConfig config, String destination) async {
  final library = Library(
    (def) => def //
      ..body.add(
        Class(
          (def) => def //
            ..name = 'TailwindSizes'
            ..constructors.add(Constructor((def) => def.name = '_'))
            ..fields.addAll([
              Field(
                (def) => def
                  ..static = true
                  ..modifier = FieldModifier.constant
                  ..name = 'rem'
                  ..assignment = Code('${config.rem}'),
              ),
              for (final fontSize in config.fontSize.entries)
                Field(
                  (def) => def //
                    ..static = true
                    ..modifier = FieldModifier.constant
                    ..name = 'text${fontSize.key.capitalize()}'
                    ..docs.add('/// Value: ${fontSize.value.when(
                      rem: (rem) => '${rem * config.rem}',
                      dp: (dp) => '$dp',
                    )}')
                    ..assignment = fontSize.value.when(
                      rem: (rem) => Code('$rem * rem'),
                      dp: (dp) => Code('$dp '),
                    ),
                ),
              if (config.gap?.resolve(config).map case Map<String, TailwindSize> map)
                for (final gap in map.entries)
                  Field(
                    (def) => def //
                      ..static = true
                      ..modifier = FieldModifier.constant
                      ..name = 'gap${gap.key.replaceAll('.', 'dot').capitalize()}'
                      ..docs.add('/// Value: ${gap.value.when(
                        rem: (rem) => '${rem * config.rem}',
                        dp: (dp) => '$dp',
                      )}')
                      ..assignment = gap.value.when(
                        rem: (rem) => Code('$rem * rem'),
                        dp: (dp) => Code('$dp '),
                      ),
                  ),
              if (config.spacing?.resolve(config).map case Map<String, TailwindSize> map)
                for (final spacing in map.entries)
                  Field(
                    (def) => def //
                      ..static = true
                      ..modifier = FieldModifier.constant
                      ..name = 'spacing${spacing.key.replaceAll('.', 'dot').capitalize()}'
                      ..docs.add('/// Value: ${spacing.value.when(
                        rem: (rem) => '${rem * config.rem}',
                        dp: (dp) => '$dp',
                      )}')
                      ..assignment = spacing.value.when(
                        rem: (rem) => Code('$rem * rem'),
                        dp: (dp) => Code('$dp '),
                      ),
                  ),
            ]),
        ),
      ),
  );

  final emitter = DartEmitter();
  final code = DartFormatter().format('${library.accept(emitter)}');

  await File(p.join(destination, 'tailwind_sizes.dart')).writeAsString(code);
}

Future<void> buildTw(TailwindConfig config, String destination) async {
  final colors = <String, ColorBase>{};
  for (final color in config.colors.entries) {
    if (color.value case RedirectColor redirect) {
      if (redirect.resolve(config.colors) case ColorBase target) {
        colors[color.key] = target;
      }
    } else {
      colors[color.key] = color.value;
    }
  }

  final library = Library(
    (def) => def //
      ..directives.addAll([
        Directive.import('package:flutter/material.dart'),
        Directive.import('package:tailwind_attributes/tailwind_attributes.dart'),
        Directive.import('tailwind_colors.dart'),
        Directive.import('tailwind_sizes.dart'),
      ])
      ..body.addAll(
        [
          Class(
            (def) => def //
              ..name = 'Tw'
              ..constructors.add(Constructor((def) => def))
              ..methods.add(Method(
                (def) => def //
                  ..static = true
                  ..name = 'attributes'
                  ..types.add(refer('T'))
                  ..returns = refer('List<Attribute<T>>')
                  ..requiredParameters.addAll([
                    Parameter(
                      (def) => def
                        ..name = 'context'
                        ..type = refer('BuildContext'),
                    ),
                    Parameter(
                      (def) => def
                        ..name = 'build'
                        ..type = refer('List<Attribute<T>> Function(Tw tw)'),
                    )
                  ])
                  ..body = Code('return build(Tw());'),
              ))
              ..fields.addAll([
                Field(
                  (def) => def
                    ..modifier = FieldModifier.final$
                    ..name = 'text'
                    ..assignment = Code('const _TextAttributes()'),
                ),
                Field(
                  (def) => def
                    ..modifier = FieldModifier.final$
                    ..name = 'font'
                    ..assignment = Code('const _FontAttributes()'),
                ),
              ]),
          ),
          Class(
            (def) => def //
              ..name = '_TextAttributes'
              ..constructors.add(Constructor((def) => def.constant = true))
              ..fields.addAll([
                for (final size in config.fontSize.entries)
                  Field(
                    (def) => def
                      ..modifier = FieldModifier.final$
                      ..name = size.key
                      ..assignment = Code('const TextSizeAttribute(size: TailwindSizes.text${size.key.capitalize()})'),
                  ),
                for (final color in colors.entries) //
                  ...colorAttributes(color.key, color.value, config)
              ])
              ..methods.addAll([
                Method(
                  (def) => def //
                    ..name = 'size'
                    ..returns = refer('TextSizeAttribute')
                    ..lambda = true
                    ..requiredParameters.add(
                      Parameter(
                        (def) => def
                          ..type = refer('double')
                          ..name = 'size',
                      ),
                    )
                    ..body = Code('TextSizeAttribute(size: size)'),
                ),
                for (final color in colors.entries.where((element) => element.value is MaterialColor))
                  Method(
                    (def) => def //
                      ..name = color.key
                      ..returns = refer('TextMaterialColorAttribute')
                      ..lambda = true
                      ..requiredParameters.add(
                        Parameter(
                          (def) => def
                            ..type = refer('int')
                            ..name = 'shade',
                        ),
                      )
                      ..body = Code('TextMaterialColorAttribute(TailwindColors.${color.key}, shade)'),
                  ),
              ]),
          ),
          Class(
            (def) => def //
              ..name = '_FontAttributes'
              ..constructors.add(Constructor((def) => def.constant = true))
              ..fields.addAll([
                for (final family in config.fontFamily.entries)
                  Field(
                    (def) => def
                      ..modifier = FieldModifier.final$
                      ..name = family.key
                      ..assignment = Code('const TextFontFamilyAttribute(\'${family.value}\')'),
                  ),
                ...[
                  ('thin', 'FontWeight.w100'),
                  ('extralight', 'FontWeight.w200'),
                  ('light', 'FontWeight.w300'),
                  ('normal', 'FontWeight.w400'),
                  ('medium', 'FontWeight.w500'),
                  ('semiBold', 'FontWeight.w600'),
                  ('bold', 'FontWeight.w700'),
                  ('extraBold', 'FontWeight.w800'),
                  ('black', 'FontWeight.w900'),
                  ('w100', 'FontWeight.w100'),
                  ('w200', 'FontWeight.w200'),
                  ('w300', 'FontWeight.w300'),
                  ('w400', 'FontWeight.w400'),
                  ('w500', 'FontWeight.w500'),
                  ('w600', 'FontWeight.w600'),
                  ('w700', 'FontWeight.w700'),
                  ('w800', 'FontWeight.w800'),
                  ('w900', 'FontWeight.w900'),
                ].map(
                  (e) => Field(
                    (def) => def
                      ..modifier = FieldModifier.final$
                      ..name = e.$1
                      ..assignment = Code('const TextWeightAttribute(${e.$2})'),
                  ),
                ),
                Field(
                  (def) => def
                    ..modifier = FieldModifier.final$
                    ..name = 'italic'
                    ..assignment = Code('const TextStyleAttribute.italic()'),
                ),
                Field(
                  (def) => def
                    ..modifier = FieldModifier.final$
                    ..name = 'notItalic'
                    ..assignment = Code('const TextStyleAttribute.notItalic()'),
                ),
              ])
              ..methods.addAll([
                Method(
                  (def) => def //
                    ..name = 'family'
                    ..returns = refer('TextFontFamilyAttribute')
                    ..lambda = true
                    ..requiredParameters.add(
                      Parameter(
                        (def) => def
                          ..type = refer('String')
                          ..name = 'family',
                      ),
                    )
                    ..body = Code('TextFontFamilyAttribute(family)'),
                ),
                Method(
                  (def) => def //
                    ..name = 'weight'
                    ..returns = refer('TextWeightAttribute')
                    ..lambda = true
                    ..requiredParameters.add(
                      Parameter(
                        (def) => def
                          ..type = refer('FontWeight')
                          ..name = 'weight',
                      ),
                    )
                    ..body = Code('TextWeightAttribute(weight)'),
                ),
              ]),
          ),
        ],
      ),
  );

  final emitter = DartEmitter();
  final code = DartFormatter().format('${library.accept(emitter)}');

  await File(p.join(destination, 'tw.dart')).writeAsString(code);
}

List<Field> colorAttributes(String key, ColorBase color, TailwindConfig config) {
  return switch (color) {
    Color() => [
        Field(
          (def) => def
            ..modifier = FieldModifier.final$
            ..name = key
            ..assignment = Code('const TextColorAttribute(color: TailwindColors.$key)'),
        )
      ],
    MaterialColor(:final shades) => [
        for (final shade in shades.entries)
          Field(
            (def) => def
              ..modifier = FieldModifier.final$
              ..name = '$key${shade.key}'
              ..assignment = Code(
                'const TextMaterialColorAttribute'
                '(TailwindColors.$key, ${shade.key})',
              ),
          )
      ],
    _ => [],
  };
}

extension on String {
  String capitalize() {
    return substring(0, 1).toUpperCase() + substring(1);
  }
}
