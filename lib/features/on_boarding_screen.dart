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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // ----------- الصورة -----------
              Image.asset(
                'assets/images/generated-7577945_1280 1.png',
                width: 1.sw,        // عرض الشاشة
                height: 0.55.sh,    // 55% من ارتفاع الشاشة
                fit: BoxFit.cover,  // بدون تشويه
              ),

              SizedBox(height: 20.h),

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

              SizedBox(height: 120.h),

              Text(
                'Continue as a guest',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}

