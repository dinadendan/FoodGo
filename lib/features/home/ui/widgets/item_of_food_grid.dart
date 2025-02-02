import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_go/core/helper/extension.dart';
import 'package:food_go/core/helper/spacing.dart';
import 'package:food_go/core/routing/routes_names.dart';
import 'package:food_go/core/theming/app_text_styles.dart';

class ItemOfFoodGrid extends StatelessWidget {
  // final GestureTapCallback? onTap;
  const ItemOfFoodGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
          context.pushNamed(Routes.foodDetails);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 2,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/burger.png',
                  fit: BoxFit.cover,
                  height: 120.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cheese Burger',
                      style: AppTextStyles.font16Black.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Text(
                      'Wendy\'s Burger',
                      style: AppTextStyles.font16Black,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    verticalSpace(5),
                    Row(
                      children: [
                         Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 18.sp,
                        ),
                        horizontalSpace(4),
                        Text(
                          '4.9',
                          style: AppTextStyles.font14Black,
                        ),
                        const Spacer(),
                        Text(
                          '150 L.E',
                          style: AppTextStyles.font14Black,
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
