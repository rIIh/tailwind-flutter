// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ColorBase _$ColorBaseFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'color':
      return Color.fromJson(json);
    case 'material':
      return MaterialColor.fromJson(json);
    case 'redirect':
      return RedirectColor.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'ColorBase', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$ColorBase {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) color,
    required TResult Function(Map<int, Color> shades) material,
    required TResult Function(String target) redirect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? color,
    TResult? Function(Map<int, Color> shades)? material,
    TResult? Function(String target)? redirect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? color,
    TResult Function(Map<int, Color> shades)? material,
    TResult Function(String target)? redirect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Color value) color,
    required TResult Function(MaterialColor value) material,
    required TResult Function(RedirectColor value) redirect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Color value)? color,
    TResult? Function(MaterialColor value)? material,
    TResult? Function(RedirectColor value)? redirect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Color value)? color,
    TResult Function(MaterialColor value)? material,
    TResult Function(RedirectColor value)? redirect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorBaseCopyWith<$Res> {
  factory $ColorBaseCopyWith(ColorBase value, $Res Function(ColorBase) then) =
      _$ColorBaseCopyWithImpl<$Res, ColorBase>;
}

/// @nodoc
class _$ColorBaseCopyWithImpl<$Res, $Val extends ColorBase>
    implements $ColorBaseCopyWith<$Res> {
  _$ColorBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ColorImplCopyWith<$Res> {
  factory _$$ColorImplCopyWith(
          _$ColorImpl value, $Res Function(_$ColorImpl) then) =
      __$$ColorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$ColorImplCopyWithImpl<$Res>
    extends _$ColorBaseCopyWithImpl<$Res, _$ColorImpl>
    implements _$$ColorImplCopyWith<$Res> {
  __$$ColorImplCopyWithImpl(
      _$ColorImpl _value, $Res Function(_$ColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ColorImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorImpl implements Color {
  const _$ColorImpl(this.value, {final String? $type})
      : $type = $type ?? 'color';

  factory _$ColorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorImplFromJson(json);

  @override
  final int value;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ColorBase.color(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorImplCopyWith<_$ColorImpl> get copyWith =>
      __$$ColorImplCopyWithImpl<_$ColorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) color,
    required TResult Function(Map<int, Color> shades) material,
    required TResult Function(String target) redirect,
  }) {
    return color(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? color,
    TResult? Function(Map<int, Color> shades)? material,
    TResult? Function(String target)? redirect,
  }) {
    return color?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? color,
    TResult Function(Map<int, Color> shades)? material,
    TResult Function(String target)? redirect,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Color value) color,
    required TResult Function(MaterialColor value) material,
    required TResult Function(RedirectColor value) redirect,
  }) {
    return color(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Color value)? color,
    TResult? Function(MaterialColor value)? material,
    TResult? Function(RedirectColor value)? redirect,
  }) {
    return color?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Color value)? color,
    TResult Function(MaterialColor value)? material,
    TResult Function(RedirectColor value)? redirect,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorImplToJson(
      this,
    );
  }
}

abstract class Color implements ColorBase {
  const factory Color(final int value) = _$ColorImpl;

  factory Color.fromJson(Map<String, dynamic> json) = _$ColorImpl.fromJson;

  int get value;
  @JsonKey(ignore: true)
  _$$ColorImplCopyWith<_$ColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MaterialColorImplCopyWith<$Res> {
  factory _$$MaterialColorImplCopyWith(
          _$MaterialColorImpl value, $Res Function(_$MaterialColorImpl) then) =
      __$$MaterialColorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<int, Color> shades});
}

/// @nodoc
class __$$MaterialColorImplCopyWithImpl<$Res>
    extends _$ColorBaseCopyWithImpl<$Res, _$MaterialColorImpl>
    implements _$$MaterialColorImplCopyWith<$Res> {
  __$$MaterialColorImplCopyWithImpl(
      _$MaterialColorImpl _value, $Res Function(_$MaterialColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shades = null,
  }) {
    return _then(_$MaterialColorImpl(
      null == shades
          ? _value._shades
          : shades // ignore: cast_nullable_to_non_nullable
              as Map<int, Color>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@ColorConverter()
class _$MaterialColorImpl implements MaterialColor {
  const _$MaterialColorImpl(final Map<int, Color> shades, {final String? $type})
      : _shades = shades,
        $type = $type ?? 'material';

  factory _$MaterialColorImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaterialColorImplFromJson(json);

  final Map<int, Color> _shades;
  @override
  Map<int, Color> get shades {
    if (_shades is EqualUnmodifiableMapView) return _shades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_shades);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ColorBase.material(shades: $shades)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialColorImpl &&
            const DeepCollectionEquality().equals(other._shades, _shades));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_shades));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialColorImplCopyWith<_$MaterialColorImpl> get copyWith =>
      __$$MaterialColorImplCopyWithImpl<_$MaterialColorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) color,
    required TResult Function(Map<int, Color> shades) material,
    required TResult Function(String target) redirect,
  }) {
    return material(shades);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? color,
    TResult? Function(Map<int, Color> shades)? material,
    TResult? Function(String target)? redirect,
  }) {
    return material?.call(shades);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? color,
    TResult Function(Map<int, Color> shades)? material,
    TResult Function(String target)? redirect,
    required TResult orElse(),
  }) {
    if (material != null) {
      return material(shades);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Color value) color,
    required TResult Function(MaterialColor value) material,
    required TResult Function(RedirectColor value) redirect,
  }) {
    return material(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Color value)? color,
    TResult? Function(MaterialColor value)? material,
    TResult? Function(RedirectColor value)? redirect,
  }) {
    return material?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Color value)? color,
    TResult Function(MaterialColor value)? material,
    TResult Function(RedirectColor value)? redirect,
    required TResult orElse(),
  }) {
    if (material != null) {
      return material(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MaterialColorImplToJson(
      this,
    );
  }
}

abstract class MaterialColor implements ColorBase {
  const factory MaterialColor(final Map<int, Color> shades) =
      _$MaterialColorImpl;

  factory MaterialColor.fromJson(Map<String, dynamic> json) =
      _$MaterialColorImpl.fromJson;

  Map<int, Color> get shades;
  @JsonKey(ignore: true)
  _$$MaterialColorImplCopyWith<_$MaterialColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RedirectColorImplCopyWith<$Res> {
  factory _$$RedirectColorImplCopyWith(
          _$RedirectColorImpl value, $Res Function(_$RedirectColorImpl) then) =
      __$$RedirectColorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String target});
}

/// @nodoc
class __$$RedirectColorImplCopyWithImpl<$Res>
    extends _$ColorBaseCopyWithImpl<$Res, _$RedirectColorImpl>
    implements _$$RedirectColorImplCopyWith<$Res> {
  __$$RedirectColorImplCopyWithImpl(
      _$RedirectColorImpl _value, $Res Function(_$RedirectColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? target = null,
  }) {
    return _then(_$RedirectColorImpl(
      null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RedirectColorImpl implements RedirectColor {
  const _$RedirectColorImpl(this.target, {final String? $type})
      : $type = $type ?? 'redirect';

  factory _$RedirectColorImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedirectColorImplFromJson(json);

  @override
  final String target;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ColorBase.redirect(target: $target)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedirectColorImpl &&
            (identical(other.target, target) || other.target == target));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, target);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RedirectColorImplCopyWith<_$RedirectColorImpl> get copyWith =>
      __$$RedirectColorImplCopyWithImpl<_$RedirectColorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) color,
    required TResult Function(Map<int, Color> shades) material,
    required TResult Function(String target) redirect,
  }) {
    return redirect(target);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? color,
    TResult? Function(Map<int, Color> shades)? material,
    TResult? Function(String target)? redirect,
  }) {
    return redirect?.call(target);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? color,
    TResult Function(Map<int, Color> shades)? material,
    TResult Function(String target)? redirect,
    required TResult orElse(),
  }) {
    if (redirect != null) {
      return redirect(target);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Color value) color,
    required TResult Function(MaterialColor value) material,
    required TResult Function(RedirectColor value) redirect,
  }) {
    return redirect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Color value)? color,
    TResult? Function(MaterialColor value)? material,
    TResult? Function(RedirectColor value)? redirect,
  }) {
    return redirect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Color value)? color,
    TResult Function(MaterialColor value)? material,
    TResult Function(RedirectColor value)? redirect,
    required TResult orElse(),
  }) {
    if (redirect != null) {
      return redirect(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RedirectColorImplToJson(
      this,
    );
  }
}

abstract class RedirectColor implements ColorBase {
  const factory RedirectColor(final String target) = _$RedirectColorImpl;

  factory RedirectColor.fromJson(Map<String, dynamic> json) =
      _$RedirectColorImpl.fromJson;

  String get target;
  @JsonKey(ignore: true)
  _$$RedirectColorImplCopyWith<_$RedirectColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
