import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../core/router/app_routers.dart';
import '../core/styling/app_color.dart';
import '../core/widgets/primary_button_widget.dart';
import '../core/widgets/primary_outlined_button_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // -------- خلفية الصورة --------
          SizedBox(
            width: 1.sw,
            height: 1.sh,
            child: Image.asset(
              'assets/images/ChatGPT Image Dec 1, 2025, 12_33_01 AM.png',
              fit: BoxFit.cover, // تغطي الشاشة بالكامل
            ),
          ),

          // -------- المحتوى فوق الصورة (الأزرار) --------
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 32.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PrimaryButtonWidget(
                    onPressed: () {
                      context.push(AppRouters.loginScreen);
                    },
                    buttonText: 'Login',
                    fontSize: 20.sp,
                    buttonColor: AppColors.primaryColor,
                  ),
                  SizedBox(height: 10.h),
                  PrimaryOutlinedButtonWidget(
                    buttonText: 'Register',
                    onPressed: () {
                      context.push(AppRouters.registerScreen);
                    },
                    bordersColor: AppColors.primaryColor,
                    textColor: AppColors.primaryColor,
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    'Continue as a guest',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
