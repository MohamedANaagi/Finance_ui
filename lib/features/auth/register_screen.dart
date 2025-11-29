


import 'package:finance_ui/core/widgets/primary_button_widget.dart';
import 'package:finance_ui/features/auth/widgets/back_button_widget.dart';
import 'package:finance_ui/features/auth/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/styling/app_color.dart';
import '../../core/styling/app_styles.dart';
import '../../core/widgets/custom_main_text.dart';
import '../../core/widgets/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body:Padding(padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          children: [
            SizedBox(height: 12.h),
            BackButtonWidget(),
            SizedBox(height: 28.h),
            CustomMainText(mainText: 'Hello! Register to get \nstarted'),
            SizedBox(height: 32.h),

            CustomTextField(hintText: 'Username'),
            SizedBox(height: 15.h),
            CustomTextField(hintText: 'Email'),
            SizedBox(height: 15.h),
            CustomTextField(hintText: 'Password'),
            SizedBox(height: 15.h),
            CustomTextField(hintText: 'Confirm password'),
            SizedBox(height: 30.h),
            PrimaryButtonWidget(
              onPressed: () {},
              buttonText: 'Register',
              fontSize: 20.sp,
              buttonColor: AppColors.primaryColor,
            ),
            SizedBox(height: 35.h),
            Row(
              children: [
                SizedBox(width: 111.w, child: Divider()),
                Text('Or Login with'),
                SizedBox(width: 111.w, child: Divider()),
              ],
            ),

            SizedBox(height: 22.h),
            SocialLoginButton(),
            SizedBox(height: 20.h),

            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Don’t have an account? ',
                  style: AppStyles.black16w500Style.copyWith(
                    color: AppColors.primaryColor,
                  ),
                  children: [
                    TextSpan(
                      text: ' Register Now ',
                      style: AppStyles.black16w500Style.copyWith(
                        color: AppColors.blackColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),

      ) ,

      ),
    );
  }
}
