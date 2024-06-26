// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ColorImpl _$$ColorImplFromJson(Map<String, dynamic> json) => _$ColorImpl(
      (json['value'] as num).toInt(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ColorImplToJson(_$ColorImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'type': instance.$type,
    };

_$MaterialColorImpl _$$MaterialColorImplFromJson(Map<String, dynamic> json) =>
    _$MaterialColorImpl(
      (json['shades'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), const ColorConverter().fromJson(e)),
      ),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MaterialColorImplToJson(_$MaterialColorImpl instance) =>
    <String, dynamic>{
      'shades': instance.shades.map(
          (k, e) => MapEntry(k.toString(), const ColorConverter().toJson(e))),
      'type': instance.$type,
    };

_$RedirectColorImpl _$$RedirectColorImplFromJson(Map<String, dynamic> json) =>
    _$RedirectColorImpl(
      json['target'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$RedirectColorImplToJson(_$RedirectColorImpl instance) =>
    <String, dynamic>{
      'target': instance.target,
      'type': instance.$type,
    };
