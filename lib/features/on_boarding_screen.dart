import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../core/router/app_routers.dart';
import '../core/styling/app_color.dart';
import '../core/widgets/primary_button_widget.dart';
import '../core/widgets/primary_outlined_button_widget.dart';


class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/images/generated-7577945_1280 1.png',
            height: 570.w,
            width: 375.h,
          ),
          SizedBox(height: 15.h),
          PrimaryButtonWidget(
            onPressed: () {
              context.go(AppRouters.loginScreen);
            },
            buttonText: 'Login',
            fontSize: 20.sp,
            buttonColor: AppColors.primaryColor,
          ),
          SizedBox(height: 10.h),
          PrimaryOutlinedButtonWidget(
            buttonText: 'Register',
            onPressed: () {

              context.go(AppRouters.registerScreen);
            },
            bordersColor: AppColors.primaryColor,
            textColor: AppColors.primaryColor,
          ),
          SizedBox(height: 46.h),
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
    );
  }
}
