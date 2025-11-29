

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        InkWell(
          onTap: () {},
          child: Expanded(
            child: Container(
              height: 56.h,
              width: 105.w,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffE8ECF4),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),

              child: Image.asset(
                'assets/images/facebook_ic.png',
                height: 26.h,
                width: 26.w,
              ),
            ),
          ),
        ),
        SizedBox(width: 8.w),
        InkWell(
          onTap: () {},
          child: Expanded(
            child: Container(
              height: 56.h,
              width: 105.w,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffE8ECF4),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),

              child: Image.asset(
                'assets/images/google_ic.png',
                height: 26.h,
                width: 26.w,
              ),
            ),
          ),
        ),
        SizedBox(width: 8.w),
        InkWell(
          onTap: () {},
          child: Expanded(
            child: Container(
              height: 56.h,
              width: 105.w,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffE8ECF4),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8.r),
              ),

              child: Image.asset(
                'assets/images/cib_apple.png',
                height: 26.h,
                width: 26.w,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
