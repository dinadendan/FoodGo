import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_go/core/theming/app_colors.dart';

class CurvedBottomNavigation extends StatelessWidget {
  final ValueChanged<int> onTap;
  const CurvedBottomNavigation({
    super.key, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 60.h,
      backgroundColor: AppColors.white,
      color:AppColors.mainRed,
      buttonBackgroundColor:AppColors.mainRed,
      iconPadding: 14,
      items:  [
        CurvedNavigationBarItem(
          child: Icon(
            FontAwesomeIcons.house,
            size: 26.sp,
          color: AppColors.white,
          ),
        ),
        CurvedNavigationBarItem(
          child:Icon(
            FontAwesomeIcons.heart,
            size: 26.sp,
            color: AppColors.white,
          ),
        ),
        CurvedNavigationBarItem(
          child: Icon(
            FontAwesomeIcons.comment,
            size: 26.sp,
            color: AppColors.white,
          ),
        ),
        CurvedNavigationBarItem(
          child: Icon(
            FontAwesomeIcons.user,
            size: 26.sp,
            color: AppColors.white,
          ),
        ),
      ],
      onTap: onTap,

    );
  }
}