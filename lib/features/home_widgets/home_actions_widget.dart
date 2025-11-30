


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/styling/app_color.dart';

class HomeActionsWidget extends StatelessWidget {
  const HomeActionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisSpacing: 12.w,
      mainAxisSpacing: 12.h,
      childAspectRatio: 1.4,
      children: const [
        _ActionItem(
          icon: Icons.send_rounded,
          title: "Send money",
          subtitle: "Take acc to acc",
        ),
        _ActionItem(
          icon: Icons.receipt_long,
          title: "Pay the bill",
          subtitle: "Lorem ipsum",
        ),
        _ActionItem(
          icon: Icons.near_me_rounded,
          title: "Request",
          subtitle: "Lorem ipsum",
        ),
        _ActionItem(
          icon: Icons.person_outline,
          title: "Contact",
          subtitle: "Lorem ipsum",
        ),
      ],
    );
  }
}

class _ActionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _ActionItem({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.r),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 36.r,
            height: 36.r,
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Icon(icon, color: AppColors.primaryColor, size: 20.r),
          ),
          SizedBox(height: 12.h),
          Text(title, style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600)),
          SizedBox(height: 4.h),
          Text(subtitle, style: TextStyle(fontSize: 11.sp, color: Colors.grey)),
        ],
      ),
    );
  }
}
