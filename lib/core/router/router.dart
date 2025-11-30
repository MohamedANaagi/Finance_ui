import 'package:finance_ui/features/auth/otp_screen.dart';
import 'package:finance_ui/features/main_screen/main_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/forgot_password.dart';
import '../../features/auth/login_screen.dart';
import '../../features/auth/register_screen.dart';
import '../../features/on_boarding_screen.dart';

import 'app_routers.dart';


class RouterGenerator {

  static final GoRouter router = GoRouter(
    initialLocation: AppRouters.onBoarding,
    routes: <GoRoute>[
      GoRoute(
        path: AppRouters.onBoarding,
        name:AppRouters.onBoarding ,
        builder: ( context,  state) {
          return  OnBoardingScreen();
        },
      ),
      GoRoute(

          path:AppRouters.loginScreen,
        name: AppRouters.loginScreen,
        builder: ( context,  state) {
          return  LoginScreen();
        },
      ),
      GoRoute(
        path: AppRouters.registerScreen,
        name: AppRouters.registerScreen,
        builder: ( context,  state) {
          return  RegisterScreen();
        },
      ),
      GoRoute(
        path: AppRouters.forgotPasswordScreen,
        name: AppRouters.forgotPasswordScreen,
        builder: ( context,  state) {
          return  ForgotPassword();
        },
      ),
      GoRoute(
        path: AppRouters.otpScreen,
        name: AppRouters.otpScreen,
        builder: ( context,  state) {
          return  OtpScreen();
        },
      ),
      GoRoute(
        path: AppRouters.mainScreen,
        name: AppRouters.mainScreen,
        builder: ( context,  state) {
          return  MainScreen();
        },
      ),

    ],

  );
}


