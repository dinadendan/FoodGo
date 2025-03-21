import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_go/core/theming/app_colors.dart';
import 'package:food_go/core/theming/app_text_styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final TextInputType? keyboardType;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final String label;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final FocusNode? focusNode;
  const AppTextFormField(
      {super.key,
        this.contentPadding,
        this.focusedBorder,
        this.enabledBorder,
        this.inputTextStyle,
        this.hintStyle,
        required this.hintText,
        this.isObscureText,
        this.suffixIcon,
        this.backgroundColor,
        this.controller,
        required this.validator,
        this.focusNode,
        this.errorBorder,
        this.focusedErrorBorder,
        required this.label,
        this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        errorBorder: errorBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.mainRed,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(25.r),
            ),
        focusedErrorBorder: focusedErrorBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.mainRed,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(25.r),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.mainRed,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(25.r),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(25.r),
            ),
        hintStyle: hintStyle ?? AppTextStyles.font18Grey.copyWith(color: Colors.grey[400]),
        hintText: hintText,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: backgroundColor ?? Colors.white,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? AppTextStyles.font18Grey,
      validator: (value) {
        return validator(value);
      },
    );
  }
}