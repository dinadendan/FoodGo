import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_go/core/helper/spacing.dart';
import 'package:food_go/core/shared_widgets/app_icon_container.dart';
import 'package:food_go/core/theming/app_colors.dart';
import 'package:food_go/core/theming/app_text_styles.dart';
import 'package:food_go/features/home/logic/home_cubit.dart';
import 'package:food_go/features/home/logic/home_states.dart';

class SpicyAndPortion extends StatelessWidget{
   const SpicyAndPortion({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    double spicyLevel = 50;

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
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
                  value: spicyLevel,
                  min: 0,
                  max: 100,
                  activeColor: AppColors.mainRed,
                  onChanged: (value) {
                    // setState(() {
                    //   spicyLevel = value;
                    // });
                  },
                ),
                Text(
                  spicyLevel.toStringAsFixed(0),
                  style: AppTextStyles.font16BlackBold,
                ),
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
                      icon: FontAwesomeIcons.minus,
                      onPressed: () {
                        cubit.decreasePortion();
                      },
                    ),
                    horizontalSpace(10),
                    Text(
                      cubit.portionCount.toString(),
                      style: AppTextStyles.font20Black,
                    ),
                    horizontalSpace(10),
                    AppIconContainer(
                      icon: FontAwesomeIcons.add,
                      size: 22.sp,
                      onPressed: (){
                        cubit.increasePortion();
                      },
                    ),

                  ],
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
