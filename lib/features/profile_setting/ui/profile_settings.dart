import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_go/core/helper/spacing.dart';
import 'package:food_go/core/shared_widgets/app_text_button.dart';
import 'package:food_go/core/shared_widgets/app_text_field.dart';
import 'package:food_go/core/theming/app_colors.dart';
import 'package:food_go/core/theming/app_text_styles.dart';

class ProfileSettingsScreen extends StatelessWidget{
  const ProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 20.h),
            child: Column(
              children:[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                  child: Center(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 80.r,
                          backgroundColor: Colors.grey[200],
                          backgroundImage: const AssetImage('assets/images/user.png'),
                        ),
                        Positioned(
                          bottom: 5.h,
                          right: 5.w,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(6.r),
                              decoration: BoxDecoration(
                                color: AppColors.mainRed,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 2.w),
                              ),
                              child: Icon(Icons.edit,
                                  size: 24.r, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFormField(
                        label: 'Name',
                          hintText: 'Enter your name',
                          validator: (value){}
                      ),
                      verticalSpace(20),
                      AppTextFormField(
                          label: 'Email',
                          hintText: 'Enter your email',
                          validator: (value){}
                      ),
                      verticalSpace(20),
                      AppTextFormField(
                          label: 'Address',
                          hintText: 'Enter your address',
                          validator: (value){}
                      ),
                      verticalSpace(20),
                      AppTextFormField(
                          label: 'Password',
                          hintText: 'Enter your password',
                          validator: (value){},
                      ),
                    ],
                  ),
                ),
                verticalSpace(40),
                AppTextButton(
                    buttonText: 'Log Out',
                    textStyle: AppTextStyles.font20Black.copyWith(color: Colors.white),
                    onPressed: (){},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
