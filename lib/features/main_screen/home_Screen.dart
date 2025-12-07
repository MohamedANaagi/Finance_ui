import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/styling/app_color.dart';
import '../home_widgets/home_actions_widget.dart';
import '../home_widgets/home_cards_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F8FA),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            // ----------- Header -------------
            Row(
              children: [
                CircleAvatar(
                  radius: 22.r,
                  backgroundImage: const AssetImage("assets/images/d.png"),
                ),
                SizedBox(width: 12.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back",
                      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                    ),
                    Text(
                      "Mohamed Nagi",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.notifications_none,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            // ----------- Cards Widget -------------
            HomeCardsWidget(),

            SizedBox(height: 26.h),

            // ----------- Actions Widget -------------
            const HomeActionsWidget(),
          ],
        ),
      ),
    );
  }
}
