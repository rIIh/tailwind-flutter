import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tailwind_generator/model/tailwind_size.dart';

class FontSizeConverter extends JsonConverter<TailwindSize, dynamic> {
  const FontSizeConverter();

  @override
  TailwindSize fromJson(json) {
    switch (json) {
      case String rem when rem.endsWith('rem'):
        return TailwindSize.rem(double.parse(rem.replaceAll('rem', '')));
      case String dp when dp.endsWith('dp') || dp.endsWith('px'):
        return TailwindSize.rem(double.parse(dp.replaceAll('dp', '').replaceAll('px', '')));

      // TODO(@melvspace): 06/26/24 line height?
      case [String value, ...]:
        return fromJson(value);

      default:
        return TailwindSize.fromJson(json);
    }
  }

  @override
  dynamic toJson(TailwindSize object) {
    return object.toJson();
  }
}
