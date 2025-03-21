import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/features/auth/data/repos/auth_repos.dart';
import 'package:food_go/features/auth/logic/auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  final AuthRepos _authRepos;

  AuthCubit(this._authRepos) : super(const AuthStates.initial());

  // Login
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  bool isObscureText = true;
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();


  // Register
  TextEditingController registerUsernameController = TextEditingController();
  TextEditingController registerEmailController = TextEditingController();
  TextEditingController registerPhoneController = TextEditingController();
  TextEditingController registerPasswordController = TextEditingController();
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();


  void togglePasswordVisibility() {
    isObscureText = !isObscureText;
    emit(AuthStates.togglePasswordVisibility(isObscureText: isObscureText));
  }

  void emitLoginStates() async {
  if (loginFormKey.currentState?.validate() ?? false) {
    emit(const AuthStates.loginLoading());
    try {
      final response = await _authRepos.login(
        loginEmailController.text.trim(),
        loginPasswordController.text.trim(),
      );
      // await saveUserToken(FirebaseAuth.instance.currentUser!.uid);
      emit(AuthStates.loginSuccess(response));
    } on FirebaseAuthException catch (e) {
      emit(AuthStates.loginFailure(
        error: e.message ?? 'Something went wrong!',
      ));
    } catch (e) {
      emit(AuthStates.loginFailure(error: e.toString()));
    }
  }
}

// Future<void> saveUserToken(String token) async {
//   await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
//   DioFactory.setTokenIntoHeaderAfterLogin(token);
// }
}