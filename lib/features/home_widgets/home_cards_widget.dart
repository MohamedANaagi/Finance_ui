import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/styling/app_color.dart';

class HomeCardsWidget extends StatefulWidget {
  const HomeCardsWidget({super.key});

  @override
  State<HomeCardsWidget> createState() => _HomeCardsWidgetState();
}

class _HomeCardsWidgetState extends State<HomeCardsWidget> {
  final PageController _controller = PageController(viewportFraction: 0.82);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 210.h,
          child: PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() => currentIndex = index);
            },
            children: [
              _card(
                title: "X-Card",
                balance: "23400 EG",
                last4: "3434",
                expiry: "12/24",
                colors: [
                  AppColors.primaryColor,
                  AppColors.primaryColor.withOpacity(0.7),
                ],
              ),
              _card(
                title: "nagi-Card",
                balance: "999999999999 EG",
                last4: "5656",
                expiry: "12/24",
                colors: [
                  AppColors.greyColor,
                  AppColors.primaryColor.withOpacity(0.7),
                ],
              ),
              _card(
                title: "M-Card",
                balance: "3209 EG",
                last4: "4545",
                expiry: "08/25",
                colors: const [
                  Color(0xff4E54C8),
                  Color(0xff8F94FB),
                ],
              ),
            ],
          ),
        ),

        SizedBox(height: 8.h),

        // ----------- Indicator -----------
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(2, (index) {
            bool isActive = currentIndex == index;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              height: 6.h,
              width: isActive ? 18.w : 6.w,
              decoration: BoxDecoration(
                color: isActive ? AppColors.primaryColor : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8.r),
              ),
            );
          }),
        )
      ],
    );
  }

  // ------- card widget -------
  Widget _card({
    required String title,
    required String balance,
    required String last4,
    required String expiry,
    required List<Color> colors,
  }) {
    return Container(
      margin: EdgeInsets.only(right: 12.w),
      padding: EdgeInsets.all(18.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        gradient: LinearGradient(colors: colors),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 14.sp, fontWeight: FontWeight.w500)),
          SizedBox(height: 12.h),
          Text("Balance",
              style: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 12.sp)),
          SizedBox(height: 8.h),
          Text(balance,
              style: TextStyle(color: Colors.white, fontSize: 26.sp, fontWeight: FontWeight.bold)),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("**** $last4", style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 14.sp)),
              Text(expiry, style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 14.sp)),
            ],
          ),
        ],
      ),
    );
  }
}
