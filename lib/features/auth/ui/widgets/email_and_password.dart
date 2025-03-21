import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_go/core/helper/spacing.dart';
import 'package:food_go/core/shared_widgets/app_text_field.dart';
import 'package:food_go/features/auth/logic/auth_cubit.dart';
import 'package:food_go/features/auth/logic/auth_states.dart';

class EmailAndPassword extends StatelessWidget {
  const EmailAndPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit,AuthStates>(
      builder: (context, state) {
        final cubit = context.read<AuthCubit>();
        return Form(
            key: cubit.loginFormKey,
            child: Column(
              children: [
                AppTextFormField(
                  controller: cubit.loginEmailController,
                  hintText: "E-mail",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'field musn\'t be empty';
                    }
                  }, label: 'E-mail',
                ),
                verticalSpace(16),
                AppTextFormField(
                  controller: cubit.loginPasswordController,
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
      }
    );
  }

}