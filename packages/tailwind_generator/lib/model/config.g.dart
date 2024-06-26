// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TailwindConfigImpl _$$TailwindConfigImplFromJson(Map<String, dynamic> json) =>
    _$TailwindConfigImpl(
      rem: (json['rem'] as num?)?.toDouble() ?? 16,
      colors: (json['colors'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, const ColorBaseConverter().fromJson(e)),
      ),
      fontFamily: Map<String, String>.from(json['fontFamily'] as Map),
      fontSize: (json['fontSize'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, const FontSizeConverter().fromJson(e)),
      ),
      spacing: json['spacing'] == null
          ? null
          : SizeMap.fromJson(json['spacing'] as Map<String, dynamic>),
      gap: json['gap'] == null
          ? null
          : SizeMap.fromJson(json['gap'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TailwindConfigImplToJson(
        _$TailwindConfigImpl instance) =>
    <String, dynamic>{
      'rem': instance.rem,
      'colors': instance.colors
          .map((k, e) => MapEntry(k, const ColorBaseConverter().toJson(e))),
      'fontFamily': instance.fontFamily,
      'fontSize': instance.fontSize
          .map((k, e) => MapEntry(k, const FontSizeConverter().toJson(e))),
      'spacing': instance.spacing,
      'gap': instance.gap,
    };
