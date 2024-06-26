import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tailwind_generator/model/config.dart';
import 'package:tailwind_generator/model/tailwind_size.dart';

part 'size_map.freezed.dart';
part 'size_map.g.dart';

@freezed
class SizeMap with _$SizeMap {
  const SizeMap._();

  const factory SizeMap({
    String? $extends,
    @TailwindSizeConverter() //
    required Map<String, TailwindSize> map,
  }) = _SizeMap;

  factory SizeMap.fromJson(Map<String, dynamic> json) => _$SizeMapFromJson({
        r'$extends': json[r'$extends'],
        if (!json.containsKey('map')) //
          'map': {...json}..remove(r'$extends')
        else
          ...json,
      });

  SizeMap resolve(TailwindConfig config) {
    var parent = config.toJson()[$extends] as SizeMap?;
    parent = parent?.resolve(config);

    var parentMap = parent?.toJson()['map'] as Map<String, dynamic>?;

    var merged = <String, dynamic>{
      ...?parentMap,
      ...toJson()['map'],
    };

    return SizeMap.fromJson(<String, dynamic>{'map': merged});
  }
}
