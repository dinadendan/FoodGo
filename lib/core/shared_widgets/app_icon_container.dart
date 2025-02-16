import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_go/core/theming/app_colors.dart';

class AppIconContainer extends StatelessWidget{
  final IconData icon;
  final double? size;
  final VoidCallback? onPressed;

  const AppIconContainer({super.key, required this.icon, this.size, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: AppColors.mainRed,
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow color
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(
         icon,
          color: Colors.white,
          size: size ?? 24.sp,
        ),
        onPressed:onPressed,
      ),
    );
  }
}
