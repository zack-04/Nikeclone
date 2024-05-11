import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app_clone/components/custom_elevated_button.dart';
import 'package:nike_app_clone/ui/signup/signup_screen1.dart';
import 'package:nike_app_clone/ui/login/login_screen2.dart';

class LoginScreen1 extends StatelessWidget {
  const LoginScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 30.sp, top: 30.sp, right: 30.sp),
          child: Column(
            children: [
              //logo
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/logo.png',
                  color: Colors.black,
                  width: 50.w,
                  height: 18.h,
                ),
              ),
              SizedBox(height: 30.h),
              //image
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 90.w,
                  height: 90.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/signup.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              //text
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Would you like to\ncontinue as John\nSmith?",
                  style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w500,
                    height: 0.8.h,
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'john@mail.com',
                  style: TextStyle(
                    fontSize: 16.0.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              //text
              Container(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 15.0.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      height: 1.2.h,
                    ),
                    children: const [
                      TextSpan(
                        text: 'By continuing, I agree to Nike\'s \n',
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(decoration: TextDecoration.underline),
                        // Add onTap callback for handling tap event
                      ),
                      TextSpan(
                        text: ' and ',
                      ),
                      TextSpan(
                        text: 'Terms of Use',
                        style: TextStyle(decoration: TextDecoration.underline),
                        // Add onTap callback for handling tap event
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              //button
              CustomElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen2(),
                      ),
                    );
                  },
                  text: 'Continue',
                  color: Colors.black,
                  textColor: Colors.white,),
              SizedBox(height: 20.h),
              //no use another account
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen1(),
                    ),
                  );
                },
                child: Text(
                  'No, use another account',
                  style: TextStyle(
                    fontSize: 16.0.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
