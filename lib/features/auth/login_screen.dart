import 'package:finance_ui/core/router/app_routers.dart';
import 'package:finance_ui/core/styling/app_styles.dart';
import 'package:finance_ui/core/widgets/custom_text_field.dart';
import 'package:finance_ui/features/auth/widgets/back_button_widget.dart';
import 'package:finance_ui/features/auth/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../core/styling/app_color.dart';
import '../../core/widgets/custom_main_text.dart';
import '../../core/widgets/primary_button_widget.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
final formKey = GlobalKey<FormState>();

late  TextEditingController  emailController ;

 late TextEditingController  passwordController;
bool isPassword = true;
@override
 void initState(){

   emailController = TextEditingController();
   passwordController = TextEditingController();
 }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 22.w),
          child: Form(
         key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.h),
                 BackButtonWidget(),
                  SizedBox(height: 28.h),
                  SizedBox(
                    width: 280.w,
                    height: 100.h,

                    child: CustomMainText(mainText: 'Welcome back!  \nAgain!',),
                  ),
                  SizedBox(height: 32.h),
                  CustomTextField(hintText: 'Enter your email',
                    controller: emailController ,
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'Please enter your email';
                      }else{
                        return null;
                      }
                    }
                  ),
                  SizedBox(height: 15.h),
                  CustomTextField(
                    hintText: 'Enter your password',
                    controller: passwordController ,
                    validator: (value) {
                       if(value!.isEmpty){
                        return 'Please enter your password';
                      }if(value.length < 8){
                        return 'Password must be at least 6 characters';
                      }else{
                        return null;
                      }
                    },
                    isPassword: isPassword ,
                    suffixIcon: IconButton(
                      icon: Icon(
                        isPassword ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {

                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Align(
                    alignment: AlignmentGeometry.centerRight,
                    child: InkWell(
                        onTap: () {
                          context.push(AppRouters.forgotPasswordScreen);
                        },
                    child: Text('Forgot Password?')),
                  ),
                  SizedBox(height: 30.h),
                  PrimaryButtonWidget(
                    onPressed: () {
                       if(formKey.currentState!.validate()){
                         context.push(AppRouters.mainScreen);
                       }else{
                         ScaffoldMessenger.of(context).showSnackBar(
                           const SnackBar(
                             content: Text('Please fill all the fields'),
                           ),
                         );

                       }

                    },
                    buttonText: 'Login',
                    fontSize: 20.sp,
                    buttonColor: AppColors.primaryColor,
                  ),
                  SizedBox(height: 35.h),

                  Row(
                    children: [
                      SizedBox(width: 111.w, child: Divider()),
                      Text('Or Login with'),
                      SizedBox(width: 111.w, child: Divider()),
                    ],
                  ),

                  SizedBox(height: 22.h),
                  SocialLoginButton(),
                  SizedBox(height: 120.h),

                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Don’t have an account? ',
                        style: AppStyles.black16w500Style.copyWith(
                          color: AppColors.primaryColor,
                        ),
                        children: [
                          TextSpan(
                            text: ' Login Now',
                            style: AppStyles.black16w500Style.copyWith(
                              color: AppColors.blackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Row(
                  //   children: [
                  //     Text("Don’t have an account? ",style: TextStyle(
                  //       fontSize: 15.sp,color: AppColors.primaryColor ,
                  //       fontWeight: FontWeight.w400,)),
                  //     Text(" Register Now ",style: TextStyle(
                  //       fontSize: 15.sp,color: AppColors.blackColor ,
                  //       fontWeight: FontWeight.bold,)),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
