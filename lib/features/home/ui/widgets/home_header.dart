import 'package:flutter/material.dart';
import 'package:food_go/core/theming/app_text_styles.dart';

class HomeHeader extends StatelessWidget{
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Image.asset('assets/images/foodgo.png'),
        Text(
           'Order your favourite food',
           style: AppTextStyles.font18Grey,)
      ],
    );
  }
}
