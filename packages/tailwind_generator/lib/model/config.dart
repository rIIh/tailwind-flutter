import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tailwind_generator/model/color.dart';
import 'package:tailwind_generator/model/font_size.dart';
import 'package:tailwind_generator/model/size_map.dart';
import 'package:tailwind_generator/model/tailwind_size.dart';

part 'config.freezed.dart';
part 'config.g.dart';

@freezed
class TailwindConfig with _$TailwindConfig {
  const factory TailwindConfig({
    @Default(16) double rem,
    @ColorBaseConverter() //
    required Map<String, ColorBase> colors,
    required Map<String, String> fontFamily,
    @FontSizeConverter() //
    required Map<String, TailwindSize> fontSize,
    SizeMap? spacing,
    SizeMap? gap,
  }) = _TailwindConfig;

  factory TailwindConfig.fromJson(Map<String, dynamic> json) => _$TailwindConfigFromJson(json);
}
