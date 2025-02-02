import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_go/core/helper/spacing.dart';
import 'package:food_go/core/shared_widgets/app_text_button.dart';
import 'package:food_go/core/theming/app_colors.dart';
import 'package:food_go/core/theming/app_text_styles.dart';
import 'package:food_go/features/home/ui/widgets/spicy_and_portion.dart';

class FoodDetails extends StatelessWidget{
  const FoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:  Icon(Icons.arrow_back,
          color: Colors.black,
          size: 26.sp,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
                'assets/images/burger.png',
              fit: BoxFit.contain,
              height: 300.h,
              width: double.infinity,
            ),
            verticalSpace(10),
            Text(
              'Cheese Burger Wendy\'s Burger',
            style: AppTextStyles.font24BlackBold,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            verticalSpace(10),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 18.sp,
                ),
                horizontalSpace(10),
                Text(
                  '4.9',
                  style: AppTextStyles.font18Grey,
                ),
                horizontalSpace(30),
                Text(
                  '150 L.E',
                  style: AppTextStyles.font18Grey,
                ),

              ],
            ),
            verticalSpace(20),
            Text(
              'The Cheeseburger Wendy\'s Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it\'s topped with melted American cheese, crispy lettuce '
                  'ripe tomato, and crunchy pickles.',
              style: AppTextStyles.font16Grey,

            ),
            verticalSpace(10),
            const SpicyAndPortion(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppTextButton(
                  buttonText: '\$8.24 ',
                  textStyle: AppTextStyles.font18White,
                  buttonWidth: 100.w,
                  onPressed: () {},

                ),
                AppTextButton(
                  buttonText: 'ORDER NOW',
                  textStyle: AppTextStyles.font18White,
                  buttonWidth: 150.w,
                  backgroundColor: AppColors.darkBrown,
                  onPressed: () {},

                ),

              ],
            ),
            verticalSpace(15),
          ],
        ),
      ),
    );
  }
}
