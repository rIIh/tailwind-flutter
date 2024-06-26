import 'package:freezed_annotation/freezed_annotation.dart';

part 'color.freezed.dart';
part 'color.g.dart';

@Freezed(unionKey: 'type')
sealed class ColorBase with _$ColorBase {
  const factory ColorBase.color(int value) = Color;

  @ColorConverter()
  const factory ColorBase.material(Map<int, Color> shades) = MaterialColor;

  const factory ColorBase.redirect(String target) = RedirectColor;

  factory ColorBase.fromJson(Map<String, dynamic> json) => _$ColorBaseFromJson(json);
}

class ColorConverter extends JsonConverter<Color, dynamic> {
  const ColorConverter();

  @override
  Color fromJson(dynamic json) {
    switch (json) {
      case String hex:
        return HexColor.parse(hex);

      default:
        return Color.fromJson(json);
    }
  }

  @override
  dynamic toJson(Color object) {
    return object.toJson();
  }
}

class ColorBaseConverter extends JsonConverter<ColorBase, dynamic> {
  const ColorBaseConverter();

  @override
  ColorBase fromJson(json) {
    if (json case Map<String, dynamic> json when json.containsKey('type')) {
      return ColorBase.fromJson(json);
    }

    switch (json) {
      case String hex when hex.startsWith('#') || hex.toLowerCase().startsWith('0x'):
        return HexColor.parse(hex);

      case String target:
        return RedirectColor(target);

      case Map<String, dynamic> shades:
        return MaterialColor.fromJson({'shades': shades});
    }

    return ColorBase.color(0x0);
  }

  @override
  Map<String, dynamic> toJson(ColorBase object) {
    return object.toJson();
  }
}

abstract class HexColor {
  static Color parse(String hex) {
    hex = hex.toUpperCase().replaceAll("#", "");
    hex = hex.replaceAll('0X', '');
    hex = hex.replaceAll('0x', '');
    if (hex.length == 6) {
      hex = "FF$hex";
    }

    return Color(int.parse(hex, radix: 16));
  }
}

extension RedirectX on RedirectColor {
  ColorBase? resolve(Map<String, ColorBase> colors) {
    final color = colors[target];
    if (color is RedirectColor) return color.resolve(colors);
    return color;
  }
}
