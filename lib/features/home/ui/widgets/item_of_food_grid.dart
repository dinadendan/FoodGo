import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_go/core/helper/extension.dart';
import 'package:food_go/core/helper/spacing.dart';
import 'package:food_go/core/routing/routes_names.dart';
import 'package:food_go/core/theming/app_text_styles.dart';
import 'package:food_go/features/home/data/models/burger_model.dart';

class ItemOfFoodGrid extends StatelessWidget {
  // final GestureTapCallback? onTap;
  final BurgerModel burgers ;
  const ItemOfFoodGrid({super.key, required this.burgers});

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
                child: Image.network(
                  burgers.image,
                  fit: BoxFit.cover,
                  height: 120.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.w, right: 5.w, top: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      burgers.name,
                      style: AppTextStyles.font16Black.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    verticalSpace(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 18.sp,
                        ),
                        horizontalSpace(4),
                        Text(
                          burgers.rate.toString(),
                          style: AppTextStyles.font14Black,
                        ),
                        const Spacer(),
                        Text(
                          '${burgers.price.toString()} L.E',
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
