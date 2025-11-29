import 'package:finance_ui/core/styling/app_color.dart';
import 'package:finance_ui/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryOutlinedButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String? buttonText;
  final Color? bordersColor;
  final Color? textColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final double? fontSize;

  PrimaryOutlinedButtonWidget({
    super.key,
    this.buttonText,
    this.bordersColor,
    this.textColor,
    this.width,
    this.height,
    this.borderRadius,
    this.onPressed,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ElevatedButton.styleFrom(
        // backgroundColor: buttonColor ?? AppColors.primaryColor,
        side: BorderSide(
          color: bordersColor ?? AppColors.primaryColor,
          width: 1.w,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
      ),

      onPressed: onPressed,
      child: Text(
        buttonText ?? '',
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: fontSize ?? 16.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
