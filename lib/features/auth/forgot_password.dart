

import 'package:finance_ui/core/styling/app_color.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/features/auth/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/widgets/custom_main_text.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/widgets/primary_button_widget.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            children: [
              SizedBox(height: 12.h),
              BackButtonWidget(),
              SizedBox(height: 28.h),
              CustomMainText(mainText: 'Forgot Password?'),
              SizedBox(height: 10.h),
              Text('Don''t worry! It occurs. Please enter the email address linked with your account.',style: AppStyles.subTextStyle,),
              SizedBox(height: 32.h),
              CustomTextField(hintText: 'Enter your email'),
              SizedBox(height: 38.h),
              PrimaryButtonWidget(buttonText: "Send Code",buttonColor: AppColors.primaryColor,onPressed: () {

              },),
              SizedBox(height: 380.h),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Don’t have an account? ',
                    style: AppStyles.black16w500Style.copyWith(
                      color: AppColors.primaryColor,
                    ),
                    children: [
                      TextSpan(
                        text: ' Login',
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
        ),
      ),
    );
  }
}
