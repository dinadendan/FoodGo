import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_go/core/helper/spacing.dart';
import 'package:food_go/core/shared_widgets/app_icon_container.dart';
import 'package:food_go/core/theming/app_colors.dart';
import 'package:food_go/core/theming/app_text_styles.dart';

class SpicyAndPortion extends StatelessWidget{
  const SpicyAndPortion({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Spicy',
              style: AppTextStyles.font16BlackBold,
            ),
            Slider(
              value: 50,
              min: 0,
              max: 100,
              activeColor: AppColors.mainRed,
              onChanged: (value){},
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Portion',
              style: AppTextStyles.font16BlackBold,
            ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppIconContainer(
                  icon: FontAwesomeIcons.add,
                  size: 26,
                  onPressed: (){},
                ),
                 horizontalSpace(10),
                 Text(
                    '2',
                  style: AppTextStyles.font20Black,
                ),
                horizontalSpace(10),
                const AppIconContainer(icon: FontAwesomeIcons.minus,),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
