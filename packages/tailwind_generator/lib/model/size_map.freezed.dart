// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'size_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SizeMap _$SizeMapFromJson(Map<String, dynamic> json) {
  return _SizeMap.fromJson(json);
}

/// @nodoc
mixin _$SizeMap {
  String? get $extends => throw _privateConstructorUsedError;
  @TailwindSizeConverter()
  Map<String, TailwindSize> get map => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SizeMapCopyWith<SizeMap> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeMapCopyWith<$Res> {
  factory $SizeMapCopyWith(SizeMap value, $Res Function(SizeMap) then) =
      _$SizeMapCopyWithImpl<$Res, SizeMap>;
  @useResult
  $Res call(
      {String? $extends,
      @TailwindSizeConverter() Map<String, TailwindSize> map});
}

/// @nodoc
class _$SizeMapCopyWithImpl<$Res, $Val extends SizeMap>
    implements $SizeMapCopyWith<$Res> {
  _$SizeMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? $extends = freezed,
    Object? map = null,
  }) {
    return _then(_value.copyWith(
      $extends: freezed == $extends
          ? _value.$extends
          : $extends // ignore: cast_nullable_to_non_nullable
              as String?,
      map: null == map
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as Map<String, TailwindSize>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SizeMapImplCopyWith<$Res> implements $SizeMapCopyWith<$Res> {
  factory _$$SizeMapImplCopyWith(
          _$SizeMapImpl value, $Res Function(_$SizeMapImpl) then) =
      __$$SizeMapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? $extends,
      @TailwindSizeConverter() Map<String, TailwindSize> map});
}

/// @nodoc
class __$$SizeMapImplCopyWithImpl<$Res>
    extends _$SizeMapCopyWithImpl<$Res, _$SizeMapImpl>
    implements _$$SizeMapImplCopyWith<$Res> {
  __$$SizeMapImplCopyWithImpl(
      _$SizeMapImpl _value, $Res Function(_$SizeMapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? $extends = freezed,
    Object? map = null,
  }) {
    return _then(_$SizeMapImpl(
      $extends: freezed == $extends
          ? _value.$extends
          : $extends // ignore: cast_nullable_to_non_nullable
              as String?,
      map: null == map
          ? _value._map
          : map // ignore: cast_nullable_to_non_nullable
              as Map<String, TailwindSize>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SizeMapImpl extends _SizeMap {
  const _$SizeMapImpl(
      {this.$extends,
      @TailwindSizeConverter() required final Map<String, TailwindSize> map})
      : _map = map,
        super._();

  factory _$SizeMapImpl.fromJson(Map<String, dynamic> json) =>
      _$$SizeMapImplFromJson(json);

  @override
  final String? $extends;
  final Map<String, TailwindSize> _map;
  @override
  @TailwindSizeConverter()
  Map<String, TailwindSize> get map {
    if (_map is EqualUnmodifiableMapView) return _map;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_map);
  }

  @override
  String toString() {
    return 'SizeMap(\$extends: ${$extends}, map: $map)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizeMapImpl &&
            (identical(other.$extends, $extends) ||
                other.$extends == $extends) &&
            const DeepCollectionEquality().equals(other._map, _map));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, $extends, const DeepCollectionEquality().hash(_map));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SizeMapImplCopyWith<_$SizeMapImpl> get copyWith =>
      __$$SizeMapImplCopyWithImpl<_$SizeMapImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SizeMapImplToJson(
      this,
    );
  }
}

abstract class _SizeMap extends SizeMap {
  const factory _SizeMap(
      {final String? $extends,
      @TailwindSizeConverter()
      required final Map<String, TailwindSize> map}) = _$SizeMapImpl;
  const _SizeMap._() : super._();

  factory _SizeMap.fromJson(Map<String, dynamic> json) = _$SizeMapImpl.fromJson;

  @override
  String? get $extends;
  @override
  @TailwindSizeConverter()
  Map<String, TailwindSize> get map;
  @override
  @JsonKey(ignore: true)
  _$$SizeMapImplCopyWith<_$SizeMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
