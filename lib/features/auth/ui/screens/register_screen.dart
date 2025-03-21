import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_go/core/helper/extension.dart';
import 'package:food_go/core/helper/spacing.dart';
import 'package:food_go/core/routing/routes_names.dart';
import 'package:food_go/core/shared_widgets/app_text_button.dart';
import 'package:food_go/core/theming/app_colors.dart';
import 'package:food_go/core/theming/app_text_styles.dart';
import 'package:food_go/features/auth/logic/auth_cubit.dart';
import 'package:food_go/features/auth/ui/widgets/registration_form.dart';

class RegisterScreen extends StatelessWidget{
  const RegisterScreen({super.key});

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
                  padding: EdgeInsets.symmetric(vertical: 50.h),
                  child: Image.asset('assets/images/foodgo.png',
                    scale: .5,),
                ),
                Text(
                  'Please register to login .',
                  style: AppTextStyles.font18Grey,),
                verticalSpace(20),
                const RegistrationForm(),
                verticalSpace(40),
                AppTextButton(
                  buttonText: "Sign Up",
                  textStyle: AppTextStyles.font18White,
                  onPressed: () {
                    validateThenDoRegister(context);
                  },
                ),
                verticalSpace(20),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already have an account?',
                        style: AppTextStyles.font14Black,
                      ),
                      TextSpan(
                        text: ' Log in',
                        style: AppTextStyles.font16White.copyWith(
                          color: AppColors.mainRed,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.pushReplacementNamed(Routes.login);
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoRegister(BuildContext context) {
    if (context.read<AuthCubit>().registerFormKey.currentState!.validate()) {
      // context.read<AuthCubit>().emitLoginStates();
    }
  }

}
