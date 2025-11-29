import 'package:finance_ui/core/styling/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
 final bool? isPassword;
  final Widget? suffixIcon;
  final double? width;
  final double? height;
  final Color? hintTextColor;

  const CustomTextField({
    super.key,
     this.hintText,
    this.suffixIcon,
    this.width,
    this.height,
    this.hintTextColor, this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 331.w,
      height: height ?? 56.h,
      child: TextField(
        
        obscureText: isPassword ?? false,

        autofocus: false,

        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText ?? "",
          hintStyle: TextStyle(
            color: const Color(0xff8391A1),
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: Color(0xffE8ECF4)),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.h),
          filled: true,
          fillColor: const Color(0xffF7F8F9),


          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
        ),
      ),
    );
  }
}
