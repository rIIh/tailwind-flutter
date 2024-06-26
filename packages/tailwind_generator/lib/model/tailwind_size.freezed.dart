// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tailwind_size.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TailwindSize _$TailwindSizeFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'rem':
      return TailwindSizeRem.fromJson(json);
    case 'dp':
      return TailwindSizeDp.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'TailwindSize',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$TailwindSize {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double rem) rem,
    required TResult Function(double dp) dp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double rem)? rem,
    TResult? Function(double dp)? dp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double rem)? rem,
    TResult Function(double dp)? dp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TailwindSizeRem value) rem,
    required TResult Function(TailwindSizeDp value) dp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TailwindSizeRem value)? rem,
    TResult? Function(TailwindSizeDp value)? dp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TailwindSizeRem value)? rem,
    TResult Function(TailwindSizeDp value)? dp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TailwindSizeCopyWith<$Res> {
  factory $TailwindSizeCopyWith(
          TailwindSize value, $Res Function(TailwindSize) then) =
      _$TailwindSizeCopyWithImpl<$Res, TailwindSize>;
}

/// @nodoc
class _$TailwindSizeCopyWithImpl<$Res, $Val extends TailwindSize>
    implements $TailwindSizeCopyWith<$Res> {
  _$TailwindSizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TailwindSizeRemImplCopyWith<$Res> {
  factory _$$TailwindSizeRemImplCopyWith(_$TailwindSizeRemImpl value,
          $Res Function(_$TailwindSizeRemImpl) then) =
      __$$TailwindSizeRemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double rem});
}

/// @nodoc
class __$$TailwindSizeRemImplCopyWithImpl<$Res>
    extends _$TailwindSizeCopyWithImpl<$Res, _$TailwindSizeRemImpl>
    implements _$$TailwindSizeRemImplCopyWith<$Res> {
  __$$TailwindSizeRemImplCopyWithImpl(
      _$TailwindSizeRemImpl _value, $Res Function(_$TailwindSizeRemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rem = null,
  }) {
    return _then(_$TailwindSizeRemImpl(
      null == rem
          ? _value.rem
          : rem // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TailwindSizeRemImpl implements TailwindSizeRem {
  const _$TailwindSizeRemImpl(this.rem, {final String? $type})
      : $type = $type ?? 'rem';

  factory _$TailwindSizeRemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TailwindSizeRemImplFromJson(json);

  @override
  final double rem;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TailwindSize.rem(rem: $rem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TailwindSizeRemImpl &&
            (identical(other.rem, rem) || other.rem == rem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TailwindSizeRemImplCopyWith<_$TailwindSizeRemImpl> get copyWith =>
      __$$TailwindSizeRemImplCopyWithImpl<_$TailwindSizeRemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double rem) rem,
    required TResult Function(double dp) dp,
  }) {
    return rem(this.rem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double rem)? rem,
    TResult? Function(double dp)? dp,
  }) {
    return rem?.call(this.rem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double rem)? rem,
    TResult Function(double dp)? dp,
    required TResult orElse(),
  }) {
    if (rem != null) {
      return rem(this.rem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TailwindSizeRem value) rem,
    required TResult Function(TailwindSizeDp value) dp,
  }) {
    return rem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TailwindSizeRem value)? rem,
    TResult? Function(TailwindSizeDp value)? dp,
  }) {
    return rem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TailwindSizeRem value)? rem,
    TResult Function(TailwindSizeDp value)? dp,
    required TResult orElse(),
  }) {
    if (rem != null) {
      return rem(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TailwindSizeRemImplToJson(
      this,
    );
  }
}

abstract class TailwindSizeRem implements TailwindSize {
  const factory TailwindSizeRem(final double rem) = _$TailwindSizeRemImpl;

  factory TailwindSizeRem.fromJson(Map<String, dynamic> json) =
      _$TailwindSizeRemImpl.fromJson;

  double get rem;
  @JsonKey(ignore: true)
  _$$TailwindSizeRemImplCopyWith<_$TailwindSizeRemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TailwindSizeDpImplCopyWith<$Res> {
  factory _$$TailwindSizeDpImplCopyWith(_$TailwindSizeDpImpl value,
          $Res Function(_$TailwindSizeDpImpl) then) =
      __$$TailwindSizeDpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double dp});
}

/// @nodoc
class __$$TailwindSizeDpImplCopyWithImpl<$Res>
    extends _$TailwindSizeCopyWithImpl<$Res, _$TailwindSizeDpImpl>
    implements _$$TailwindSizeDpImplCopyWith<$Res> {
  __$$TailwindSizeDpImplCopyWithImpl(
      _$TailwindSizeDpImpl _value, $Res Function(_$TailwindSizeDpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dp = null,
  }) {
    return _then(_$TailwindSizeDpImpl(
      null == dp
          ? _value.dp
          : dp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TailwindSizeDpImpl implements TailwindSizeDp {
  const _$TailwindSizeDpImpl(this.dp, {final String? $type})
      : $type = $type ?? 'dp';

  factory _$TailwindSizeDpImpl.fromJson(Map<String, dynamic> json) =>
      _$$TailwindSizeDpImplFromJson(json);

  @override
  final double dp;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TailwindSize.dp(dp: $dp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TailwindSizeDpImpl &&
            (identical(other.dp, dp) || other.dp == dp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TailwindSizeDpImplCopyWith<_$TailwindSizeDpImpl> get copyWith =>
      __$$TailwindSizeDpImplCopyWithImpl<_$TailwindSizeDpImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double rem) rem,
    required TResult Function(double dp) dp,
  }) {
    return dp(this.dp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double rem)? rem,
    TResult? Function(double dp)? dp,
  }) {
    return dp?.call(this.dp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double rem)? rem,
    TResult Function(double dp)? dp,
    required TResult orElse(),
  }) {
    if (dp != null) {
      return dp(this.dp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TailwindSizeRem value) rem,
    required TResult Function(TailwindSizeDp value) dp,
  }) {
    return dp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TailwindSizeRem value)? rem,
    TResult? Function(TailwindSizeDp value)? dp,
  }) {
    return dp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TailwindSizeRem value)? rem,
    TResult Function(TailwindSizeDp value)? dp,
    required TResult orElse(),
  }) {
    if (dp != null) {
      return dp(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TailwindSizeDpImplToJson(
      this,
    );
  }
}

abstract class TailwindSizeDp implements TailwindSize {
  const factory TailwindSizeDp(final double dp) = _$TailwindSizeDpImpl;

  factory TailwindSizeDp.fromJson(Map<String, dynamic> json) =
      _$TailwindSizeDpImpl.fromJson;

  double get dp;
  @JsonKey(ignore: true)
  _$$TailwindSizeDpImplCopyWith<_$TailwindSizeDpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
