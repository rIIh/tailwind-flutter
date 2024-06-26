import 'package:freezed_annotation/freezed_annotation.dart';

part 'tailwind_size.freezed.dart';
part 'tailwind_size.g.dart';

@Freezed(unionKey: 'type')
class TailwindSize with _$TailwindSize {
  const factory TailwindSize.rem(double rem) = TailwindSizeRem;
  const factory TailwindSize.dp(double dp) = TailwindSizeDp;

  factory TailwindSize.fromJson(Map<String, dynamic> json) => _$TailwindSizeFromJson(json);
}

class TailwindSizeConverter extends JsonConverter<TailwindSize, dynamic> {
  const TailwindSizeConverter();

  @override
  TailwindSize fromJson(json) {
    switch (json) {
      case String rem when rem.endsWith('rem'):
        return TailwindSize.rem(double.parse(rem.replaceAll('rem', '')));
      case String dp when dp.endsWith('dp') || dp.endsWith('px'):
        return TailwindSize.rem(double.parse(dp.replaceAll('dp', '').replaceAll('px', '')));
      default:
        return TailwindSize.fromJson(json);
    }
  }

  @override
  dynamic toJson(TailwindSize object) {
    return object.toJson();
  }
}
