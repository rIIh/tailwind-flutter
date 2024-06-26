// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TailwindConfig _$TailwindConfigFromJson(Map<String, dynamic> json) {
  return _TailwindConfig.fromJson(json);
}

/// @nodoc
mixin _$TailwindConfig {
  double get rem => throw _privateConstructorUsedError;
  @ColorBaseConverter()
  Map<String, ColorBase> get colors => throw _privateConstructorUsedError;
  Map<String, String> get fontFamily => throw _privateConstructorUsedError;
  @FontSizeConverter()
  Map<String, TailwindSize> get fontSize => throw _privateConstructorUsedError;
  SizeMap? get spacing => throw _privateConstructorUsedError;
  SizeMap? get gap => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TailwindConfigCopyWith<TailwindConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TailwindConfigCopyWith<$Res> {
  factory $TailwindConfigCopyWith(
          TailwindConfig value, $Res Function(TailwindConfig) then) =
      _$TailwindConfigCopyWithImpl<$Res, TailwindConfig>;
  @useResult
  $Res call(
      {double rem,
      @ColorBaseConverter() Map<String, ColorBase> colors,
      Map<String, String> fontFamily,
      @FontSizeConverter() Map<String, TailwindSize> fontSize,
      SizeMap? spacing,
      SizeMap? gap});

  $SizeMapCopyWith<$Res>? get spacing;
  $SizeMapCopyWith<$Res>? get gap;
}

/// @nodoc
class _$TailwindConfigCopyWithImpl<$Res, $Val extends TailwindConfig>
    implements $TailwindConfigCopyWith<$Res> {
  _$TailwindConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rem = null,
    Object? colors = null,
    Object? fontFamily = null,
    Object? fontSize = null,
    Object? spacing = freezed,
    Object? gap = freezed,
  }) {
    return _then(_value.copyWith(
      rem: null == rem
          ? _value.rem
          : rem // ignore: cast_nullable_to_non_nullable
              as double,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Map<String, ColorBase>,
      fontFamily: null == fontFamily
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      fontSize: null == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as Map<String, TailwindSize>,
      spacing: freezed == spacing
          ? _value.spacing
          : spacing // ignore: cast_nullable_to_non_nullable
              as SizeMap?,
      gap: freezed == gap
          ? _value.gap
          : gap // ignore: cast_nullable_to_non_nullable
              as SizeMap?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SizeMapCopyWith<$Res>? get spacing {
    if (_value.spacing == null) {
      return null;
    }

    return $SizeMapCopyWith<$Res>(_value.spacing!, (value) {
      return _then(_value.copyWith(spacing: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SizeMapCopyWith<$Res>? get gap {
    if (_value.gap == null) {
      return null;
    }

    return $SizeMapCopyWith<$Res>(_value.gap!, (value) {
      return _then(_value.copyWith(gap: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TailwindConfigImplCopyWith<$Res>
    implements $TailwindConfigCopyWith<$Res> {
  factory _$$TailwindConfigImplCopyWith(_$TailwindConfigImpl value,
          $Res Function(_$TailwindConfigImpl) then) =
      __$$TailwindConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double rem,
      @ColorBaseConverter() Map<String, ColorBase> colors,
      Map<String, String> fontFamily,
      @FontSizeConverter() Map<String, TailwindSize> fontSize,
      SizeMap? spacing,
      SizeMap? gap});

  @override
  $SizeMapCopyWith<$Res>? get spacing;
  @override
  $SizeMapCopyWith<$Res>? get gap;
}

/// @nodoc
class __$$TailwindConfigImplCopyWithImpl<$Res>
    extends _$TailwindConfigCopyWithImpl<$Res, _$TailwindConfigImpl>
    implements _$$TailwindConfigImplCopyWith<$Res> {
  __$$TailwindConfigImplCopyWithImpl(
      _$TailwindConfigImpl _value, $Res Function(_$TailwindConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rem = null,
    Object? colors = null,
    Object? fontFamily = null,
    Object? fontSize = null,
    Object? spacing = freezed,
    Object? gap = freezed,
  }) {
    return _then(_$TailwindConfigImpl(
      rem: null == rem
          ? _value.rem
          : rem // ignore: cast_nullable_to_non_nullable
              as double,
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as Map<String, ColorBase>,
      fontFamily: null == fontFamily
          ? _value._fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      fontSize: null == fontSize
          ? _value._fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as Map<String, TailwindSize>,
      spacing: freezed == spacing
          ? _value.spacing
          : spacing // ignore: cast_nullable_to_non_nullable
              as SizeMap?,
      gap: freezed == gap
          ? _value.gap
          : gap // ignore: cast_nullable_to_non_nullable
              as SizeMap?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TailwindConfigImpl implements _TailwindConfig {
  const _$TailwindConfigImpl(
      {this.rem = 16,
      @ColorBaseConverter() required final Map<String, ColorBase> colors,
      required final Map<String, String> fontFamily,
      @FontSizeConverter() required final Map<String, TailwindSize> fontSize,
      this.spacing,
      this.gap})
      : _colors = colors,
        _fontFamily = fontFamily,
        _fontSize = fontSize;

  factory _$TailwindConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$TailwindConfigImplFromJson(json);

  @override
  @JsonKey()
  final double rem;
  final Map<String, ColorBase> _colors;
  @override
  @ColorBaseConverter()
  Map<String, ColorBase> get colors {
    if (_colors is EqualUnmodifiableMapView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_colors);
  }

  final Map<String, String> _fontFamily;
  @override
  Map<String, String> get fontFamily {
    if (_fontFamily is EqualUnmodifiableMapView) return _fontFamily;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fontFamily);
  }

  final Map<String, TailwindSize> _fontSize;
  @override
  @FontSizeConverter()
  Map<String, TailwindSize> get fontSize {
    if (_fontSize is EqualUnmodifiableMapView) return _fontSize;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fontSize);
  }

  @override
  final SizeMap? spacing;
  @override
  final SizeMap? gap;

  @override
  String toString() {
    return 'TailwindConfig(rem: $rem, colors: $colors, fontFamily: $fontFamily, fontSize: $fontSize, spacing: $spacing, gap: $gap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TailwindConfigImpl &&
            (identical(other.rem, rem) || other.rem == rem) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            const DeepCollectionEquality()
                .equals(other._fontFamily, _fontFamily) &&
            const DeepCollectionEquality().equals(other._fontSize, _fontSize) &&
            (identical(other.spacing, spacing) || other.spacing == spacing) &&
            (identical(other.gap, gap) || other.gap == gap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      rem,
      const DeepCollectionEquality().hash(_colors),
      const DeepCollectionEquality().hash(_fontFamily),
      const DeepCollectionEquality().hash(_fontSize),
      spacing,
      gap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TailwindConfigImplCopyWith<_$TailwindConfigImpl> get copyWith =>
      __$$TailwindConfigImplCopyWithImpl<_$TailwindConfigImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TailwindConfigImplToJson(
      this,
    );
  }
}

abstract class _TailwindConfig implements TailwindConfig {
  const factory _TailwindConfig(
      {final double rem,
      @ColorBaseConverter() required final Map<String, ColorBase> colors,
      required final Map<String, String> fontFamily,
      @FontSizeConverter() required final Map<String, TailwindSize> fontSize,
      final SizeMap? spacing,
      final SizeMap? gap}) = _$TailwindConfigImpl;

  factory _TailwindConfig.fromJson(Map<String, dynamic> json) =
      _$TailwindConfigImpl.fromJson;

  @override
  double get rem;
  @override
  @ColorBaseConverter()
  Map<String, ColorBase> get colors;
  @override
  Map<String, String> get fontFamily;
  @override
  @FontSizeConverter()
  Map<String, TailwindSize> get fontSize;
  @override
  SizeMap? get spacing;
  @override
  SizeMap? get gap;
  @override
  @JsonKey(ignore: true)
  _$$TailwindConfigImplCopyWith<_$TailwindConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
