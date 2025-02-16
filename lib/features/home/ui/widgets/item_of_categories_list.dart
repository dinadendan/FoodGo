import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_go/core/helper/constants.dart';
import 'package:food_go/core/theming/app_colors.dart';
import 'package:food_go/core/theming/app_text_styles.dart';

class ItemOfCategoriesList extends StatelessWidget {
  final int itemIndex;
  final int selectedIndex;

  const ItemOfCategoriesList({
    super.key,
    required this.itemIndex,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = itemIndex == selectedIndex;
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : 8.w,
        top: 16.h,
        bottom: 20.h,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.mainRed : AppColors.lightGrey,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 7,
              spreadRadius: 2,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            '${categoryNames[itemIndex]} Burgers',
            style: isSelected
                ? AppTextStyles.font16White
                : AppTextStyles.font16Grey.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
