import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_go/core/helper/extension.dart';
import 'package:food_go/core/routing/routes_names.dart';
import 'package:food_go/core/theming/app_colors.dart';
import 'package:food_go/core/theming/app_text_styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
            TextSpan(
            text: 'Don\'t have an account?',
            style: AppTextStyles.font14Black,
          ),
          TextSpan(
            text: ' Sign Up',
            style: AppTextStyles.font14Black.copyWith(
              color: AppColors.mainRed,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.register);
              },
          ),
        ],
      ),
    );
  }
}