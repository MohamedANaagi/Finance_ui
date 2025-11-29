

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../core/styling/app_color.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: AlignmentGeometry.centerLeft,
      child: Container(
        height: 41.h,
        width: 41.w,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Color(0xffE8ECF4), width: 1),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Center(
          child: IconButton(
            onPressed: () {
              context.pop();

            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
