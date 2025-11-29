
import 'package:finance_ui/features/auth/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/styling/app_color.dart';
import '../../core/styling/app_styles.dart';
import '../../core/widgets/custom_main_text.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/widgets/primary_button_widget.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
              CustomMainText(mainText: 'OTP Verification'),
              SizedBox(height: 10.h),
              Text('Enter the verification code we just sent on your email address.',style: AppStyles.subTextStyle,),
              SizedBox(height: 32.h),


              PrimaryButtonWidget(buttonText: "Verify",buttonColor: AppColors.primaryColor,onPressed: () {

              },),
              SizedBox(height: 320.h),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Don’t have an account? ',
                    style: AppStyles.black16w500Style.copyWith(
                      color: AppColors.primaryColor,
                    ),
                    children: [
                      TextSpan(
                        text: ' Resend',
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
