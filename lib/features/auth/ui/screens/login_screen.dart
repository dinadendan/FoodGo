import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_go/core/helper/spacing.dart';
import 'package:food_go/core/shared_widgets/app_text_button.dart';
import 'package:food_go/core/theming/app_text_styles.dart';
import 'package:food_go/features/auth/logic/auth_cubit.dart';
import 'package:food_go/features/auth/ui/widgets/dont_have_account_text.dart';
import 'package:food_go/features/auth/ui/widgets/email_and_password.dart';
import 'package:food_go/features/auth/ui/widgets/login_bloc_listener.dart';
import 'package:food_go/features/auth/ui/widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 80.h),
                  child: Image.asset('assets/images/foodgo.png',
                  scale: .5,),
                ),
                const EmailAndPassword(),
                verticalSpace(40),
                AppTextButton(
                  buttonText: "Log In",
                  textStyle: AppTextStyles.font18White,
                  onPressed: () {
                    validateThenDoLogin(context);
                  },
                ),
                verticalSpace(16),
                const TermsAndConditionsText(),
                verticalSpace(16),
                const DontHaveAccountText(),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<AuthCubit>().loginFormKey.currentState!.validate()) {
      context.read<AuthCubit>().emitLoginStates();
    }
  }
}
