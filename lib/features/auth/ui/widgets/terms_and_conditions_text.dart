import 'package:flutter/material.dart';
import 'package:food_go/core/theming/app_colors.dart';
import 'package:food_go/core/theming/app_text_styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our Terms & Conditions and',
            style: AppTextStyles.font14Black,
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: AppTextStyles.font14Black.copyWith(
              color: AppColors.mainRed,
            ),
          ),
        ],
      ),
    );
  }
}