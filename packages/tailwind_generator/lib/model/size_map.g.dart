// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'size_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SizeMapImpl _$$SizeMapImplFromJson(Map<String, dynamic> json) =>
    _$SizeMapImpl(
      $extends: json[r'$extends'] as String?,
      map: (json['map'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, const TailwindSizeConverter().fromJson(e)),
      ),
    );

Map<String, dynamic> _$$SizeMapImplToJson(_$SizeMapImpl instance) =>
    <String, dynamic>{
      r'$extends': instance.$extends,
      'map': instance.map
          .map((k, e) => MapEntry(k, const TailwindSizeConverter().toJson(e))),
    };
