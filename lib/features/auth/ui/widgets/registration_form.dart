import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_go/core/helper/spacing.dart';
import 'package:food_go/core/shared_widgets/app_text_field.dart';
import 'package:food_go/features/auth/logic/auth_cubit.dart';
import 'package:food_go/features/auth/logic/auth_states.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit,AuthStates>(
      builder: (context, state) {
        final cubit = context.read<AuthCubit>();
        return Form(
            key: cubit.registerFormKey,
            child: Column(
              children: [
                AppTextFormField(
                  controller: cubit.registerUsernameController,
                  hintText: "Username",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'field musn\'t be empty';
                    }
                  }, label: 'Username',
                ),
                verticalSpace(16),
                AppTextFormField(
                  controller: cubit.registerEmailController,
                  hintText: "E-mail",
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'field musn\'t be empty';
                    }
                  }, label: 'E-mail',
                ),
                verticalSpace(16),
                AppTextFormField(
                  controller: cubit.registerPhoneController,
                  hintText: "Phone Number",
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'field musn\'t be empty';
                    }
                  }, label: 'Phone Number',
                ),
                verticalSpace(16),
                AppTextFormField(
                  controller: cubit.registerPasswordController,
                  hintText: "Password",
                  isObscureText: cubit.isObscureText,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      cubit.togglePasswordVisibility();
                    },
                    child: Icon(
                      cubit.isObscureText ? Icons.visibility : Icons.visibility_off,
                      size: 20.r,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'field musn\'t be empty';
                    }
                  }, label: 'Password',
                ),
              ],
            ));
      },
    );
  }
}
