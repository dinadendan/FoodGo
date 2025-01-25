import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_go/core/theming/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.white,
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.poppins(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: AppColors.darkBrown,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: AppColors.darkBrown,
      height: 1.2,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.mainRed,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Colors.white,
    // unselectedItemColor: AppColors.white,
    elevation: 20.0,
  ),
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: AppColors.white,
    titleSpacing: 20.0,
    elevation: 0.0,
    titleTextStyle: GoogleFonts.poppins(
      fontSize: 22.sp,
      fontWeight: FontWeight.bold,
      color: AppColors.white,
    ),
    toolbarTextStyle: GoogleFonts.poppins(
      fontSize: 18.0,
      color: AppColors.white,
      fontWeight: FontWeight.w600,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.white,
    ),
    systemOverlayStyle: const SystemUiOverlayStyle(
      // statusBarColor: Color(0xFF333739),
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainRed),

);