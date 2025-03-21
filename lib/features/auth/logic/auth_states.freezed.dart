// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthStates<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isObscureText) togglePasswordVisibility,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String error) loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isObscureText)? togglePasswordVisibility,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isObscureText)? togglePasswordVisibility,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TogglePasswordVisibility<T> value)
        togglePasswordVisibility,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginFailure<T> value) loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginFailure<T> value)? loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginFailure<T> value)? loginFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatesCopyWith<T, $Res> {
  factory $AuthStatesCopyWith(
          AuthStates<T> value, $Res Function(AuthStates<T>) then) =
      _$AuthStatesCopyWithImpl<T, $Res, AuthStates<T>>;
}

/// @nodoc
class _$AuthStatesCopyWithImpl<T, $Res, $Val extends AuthStates<T>>
    implements $AuthStatesCopyWith<T, $Res> {
  _$AuthStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$AuthStatesCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthStates<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isObscureText) togglePasswordVisibility,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isObscureText)? togglePasswordVisibility,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isObscureText)? togglePasswordVisibility,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TogglePasswordVisibility<T> value)
        togglePasswordVisibility,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginFailure<T> value) loginFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginFailure<T> value)? loginFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginFailure<T> value)? loginFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements AuthStates<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$TogglePasswordVisibilityImplCopyWith<T, $Res> {
  factory _$$TogglePasswordVisibilityImplCopyWith(
          _$TogglePasswordVisibilityImpl<T> value,
          $Res Function(_$TogglePasswordVisibilityImpl<T>) then) =
      __$$TogglePasswordVisibilityImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool isObscureText});
}

/// @nodoc
class __$$TogglePasswordVisibilityImplCopyWithImpl<T, $Res>
    extends _$AuthStatesCopyWithImpl<T, $Res, _$TogglePasswordVisibilityImpl<T>>
    implements _$$TogglePasswordVisibilityImplCopyWith<T, $Res> {
  __$$TogglePasswordVisibilityImplCopyWithImpl(
      _$TogglePasswordVisibilityImpl<T> _value,
      $Res Function(_$TogglePasswordVisibilityImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isObscureText = null,
  }) {
    return _then(_$TogglePasswordVisibilityImpl<T>(
      isObscureText: null == isObscureText
          ? _value.isObscureText
          : isObscureText // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TogglePasswordVisibilityImpl<T> implements TogglePasswordVisibility<T> {
  const _$TogglePasswordVisibilityImpl({required this.isObscureText});

  @override
  final bool isObscureText;

  @override
  String toString() {
    return 'AuthStates<$T>.togglePasswordVisibility(isObscureText: $isObscureText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TogglePasswordVisibilityImpl<T> &&
            (identical(other.isObscureText, isObscureText) ||
                other.isObscureText == isObscureText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isObscureText);

  /// Create a copy of AuthStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TogglePasswordVisibilityImplCopyWith<T, _$TogglePasswordVisibilityImpl<T>>
      get copyWith => __$$TogglePasswordVisibilityImplCopyWithImpl<T,
          _$TogglePasswordVisibilityImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isObscureText) togglePasswordVisibility,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return togglePasswordVisibility(isObscureText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isObscureText)? togglePasswordVisibility,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return togglePasswordVisibility?.call(isObscureText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isObscureText)? togglePasswordVisibility,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility(isObscureText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TogglePasswordVisibility<T> value)
        togglePasswordVisibility,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginFailure<T> value) loginFailure,
  }) {
    return togglePasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginFailure<T> value)? loginFailure,
  }) {
    return togglePasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginFailure<T> value)? loginFailure,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class TogglePasswordVisibility<T> implements AuthStates<T> {
  const factory TogglePasswordVisibility({required final bool isObscureText}) =
      _$TogglePasswordVisibilityImpl<T>;

  bool get isObscureText;

  /// Create a copy of AuthStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TogglePasswordVisibilityImplCopyWith<T, _$TogglePasswordVisibilityImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginLoadingImplCopyWith<T, $Res> {
  factory _$$LoginLoadingImplCopyWith(_$LoginLoadingImpl<T> value,
          $Res Function(_$LoginLoadingImpl<T>) then) =
      __$$LoginLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoginLoadingImplCopyWithImpl<T, $Res>
    extends _$AuthStatesCopyWithImpl<T, $Res, _$LoginLoadingImpl<T>>
    implements _$$LoginLoadingImplCopyWith<T, $Res> {
  __$$LoginLoadingImplCopyWithImpl(
      _$LoginLoadingImpl<T> _value, $Res Function(_$LoginLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginLoadingImpl<T> implements LoginLoading<T> {
  const _$LoginLoadingImpl();

  @override
  String toString() {
    return 'AuthStates<$T>.loginLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isObscureText) togglePasswordVisibility,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isObscureText)? togglePasswordVisibility,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isObscureText)? togglePasswordVisibility,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TogglePasswordVisibility<T> value)
        togglePasswordVisibility,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginFailure<T> value) loginFailure,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginFailure<T> value)? loginFailure,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginFailure<T> value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class LoginLoading<T> implements AuthStates<T> {
  const factory LoginLoading() = _$LoginLoadingImpl<T>;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<T, $Res> {
  factory _$$LoginSuccessImplCopyWith(_$LoginSuccessImpl<T> value,
          $Res Function(_$LoginSuccessImpl<T>) then) =
      __$$LoginSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<T, $Res>
    extends _$AuthStatesCopyWithImpl<T, $Res, _$LoginSuccessImpl<T>>
    implements _$$LoginSuccessImplCopyWith<T, $Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl<T> _value, $Res Function(_$LoginSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LoginSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$LoginSuccessImpl<T> implements LoginSuccess<T> {
  const _$LoginSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AuthStates<$T>.loginSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of AuthStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessImplCopyWith<T, _$LoginSuccessImpl<T>> get copyWith =>
      __$$LoginSuccessImplCopyWithImpl<T, _$LoginSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isObscureText) togglePasswordVisibility,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return loginSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isObscureText)? togglePasswordVisibility,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return loginSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isObscureText)? togglePasswordVisibility,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TogglePasswordVisibility<T> value)
        togglePasswordVisibility,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginFailure<T> value) loginFailure,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginFailure<T> value)? loginFailure,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginFailure<T> value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginSuccess<T> implements AuthStates<T> {
  const factory LoginSuccess(final T data) = _$LoginSuccessImpl<T>;

  T get data;

  /// Create a copy of AuthStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginSuccessImplCopyWith<T, _$LoginSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginFailureImplCopyWith<T, $Res> {
  factory _$$LoginFailureImplCopyWith(_$LoginFailureImpl<T> value,
          $Res Function(_$LoginFailureImpl<T>) then) =
      __$$LoginFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoginFailureImplCopyWithImpl<T, $Res>
    extends _$AuthStatesCopyWithImpl<T, $Res, _$LoginFailureImpl<T>>
    implements _$$LoginFailureImplCopyWith<T, $Res> {
  __$$LoginFailureImplCopyWithImpl(
      _$LoginFailureImpl<T> _value, $Res Function(_$LoginFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AuthStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoginFailureImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginFailureImpl<T> implements LoginFailure<T> {
  const _$LoginFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthStates<$T>.loginFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of AuthStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailureImplCopyWith<T, _$LoginFailureImpl<T>> get copyWith =>
      __$$LoginFailureImplCopyWithImpl<T, _$LoginFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isObscureText) togglePasswordVisibility,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String error) loginFailure,
  }) {
    return loginFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isObscureText)? togglePasswordVisibility,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String error)? loginFailure,
  }) {
    return loginFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isObscureText)? togglePasswordVisibility,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String error)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(TogglePasswordVisibility<T> value)
        togglePasswordVisibility,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(LoginFailure<T> value) loginFailure,
  }) {
    return loginFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(LoginFailure<T> value)? loginFailure,
  }) {
    return loginFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(TogglePasswordVisibility<T> value)?
        togglePasswordVisibility,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(LoginFailure<T> value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(this);
    }
    return orElse();
  }
}

abstract class LoginFailure<T> implements AuthStates<T> {
  const factory LoginFailure({required final String error}) =
      _$LoginFailureImpl<T>;

  String get error;

  /// Create a copy of AuthStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginFailureImplCopyWith<T, _$LoginFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
