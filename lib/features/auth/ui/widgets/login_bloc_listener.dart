import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/core/helper/extension.dart';
import 'package:food_go/core/routing/routes_names.dart';
import 'package:food_go/core/theming/app_colors.dart';
import 'package:food_go/core/theming/app_text_styles.dart';
import 'package:food_go/features/auth/logic/auth_cubit.dart';
import 'package:food_go/features/auth/logic/auth_states.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthStates>(
      listenWhen: (previous, current) =>
      current is LoginLoading || current is LoginSuccess || current is LoginFailure,
      listener: (context, state) {
        state.whenOrNull(
          loginLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColors.mainRed,
                ),
              ),
            );
          },
          loginSuccess: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeLayout);
          },
          loginFailure: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: AppTextStyles.font14Black
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: AppTextStyles.font16White,
            ),
          ),
        ],
      ),
    );
  }
}