import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_go/core/helper/spacing.dart';
import 'package:food_go/core/shared_widgets/app_text_field.dart';
import 'package:food_go/core/theming/app_text_styles.dart';

class ProfileSettingsScreen extends StatelessWidget{
  const ProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children:[
            Padding(
              padding: EdgeInsets.only(top: 40.h ),
              child: Center(
                child: CircleAvatar(
                  radius: 80.r,
                  backgroundColor:Colors.grey[200],
                  backgroundImage: const AssetImage('assets/images/user.png'),
              ),
            ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 20.h),
              child: Form(
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
            ),
            InkWell(
              onTap: (){},
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'Log Out',
                        style: AppTextStyles.font20Black.copyWith(
                          fontWeight: FontWeight.w600,
                        )),
                    const Icon(Icons.logout,
                    size: 26,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
