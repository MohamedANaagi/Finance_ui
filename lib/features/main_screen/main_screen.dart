import 'package:finance_ui/core/styling/app_color.dart';
import 'package:finance_ui/features/main_screen/profile_screen.dart';
import 'package:finance_ui/features/main_screen/statistics_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../auth/widgets/main_bottom_nav_bar.dart';
import 'home_Screen.dart';
import 'my_card_screen.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  // لستة الشاشات اللي هتتنقل بينها
  late final List<Widget> screens = [
    const HomeScreen(),
    const StatisticsScreen(),
    const MyCardScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // الشاشة الحالية حسب الإندكس
      body: screens[currentIndex],

      // زرار البلس في النص
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        elevation: 4,
        onPressed: () {
          setState(() {
            currentIndex = 2; // مثلاً يفتح MyCard
          });
        },
        child: const Icon(Icons.add, size: 32, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // البوتوم بار مفصول في ويدجت
      bottomNavigationBar: MainBottomNavBar(
        currentIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
