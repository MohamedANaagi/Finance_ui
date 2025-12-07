import 'package:finance_ui/features/auth/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../core/styling/app_color.dart';
import '../../core/styling/app_styles.dart';
import '../../core/widgets/custom_main_text.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/widgets/primary_button_widget.dart';

class OtpScreen extends StatefulWidget {
  OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          children: [
            SizedBox(height: 12.h),
            BackButtonWidget(),
            SizedBox(height: 28.h),
            CustomMainText(mainText: 'OTP Verification'),
            SizedBox(height: 10.h),
            Text(
              'Enter the verification code we just sent on your email address.',
              style: AppStyles.subTextStyle,
            ),
            SizedBox(height: 32.h),

            PinCodeTextField(
              appContext: context,

              keyboardType: TextInputType.number,
              length: 4,
              controller: pinCodeController,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                fieldHeight: 60.h,
                fieldWidth: 70.w,
                activeColor: AppColors.primaryColor,
                inactiveColor: AppColors.primaryColor,
                activeFillColor: AppColors.primaryColor,
                inactiveFillColor: AppColors.primaryColor,
                selectedColor: AppColors.primaryColor,
                selectedFillColor: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(8.r),
                borderWidth: 1.w,
              ),
            ),

            PrimaryButtonWidget(
              buttonText: "Verify",
              buttonColor: AppColors.primaryColor,
              onPressed: () {},
            ),
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
    );
  }
}
