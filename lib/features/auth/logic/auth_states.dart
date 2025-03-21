import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_states.freezed.dart';

@freezed
class AuthStates<T> with _$AuthStates<T> {
  const factory AuthStates.initial() = _Initial;
  const factory AuthStates.togglePasswordVisibility({required bool isObscureText}) = TogglePasswordVisibility;


  const factory AuthStates.loginLoading() = LoginLoading<T>;
  const factory AuthStates.loginSuccess(T data) = LoginSuccess<T>;
  const factory AuthStates.loginFailure({required String error}) = LoginFailure<T>;
}