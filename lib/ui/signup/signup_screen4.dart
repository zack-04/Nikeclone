import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app_clone/components/custom_elevated_button.dart';
import 'package:nike_app_clone/ui/login/login_screen1.dart';

class SignUpScreen4 extends StatelessWidget {
  const SignUpScreen4({super.key});

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
              //text
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Your account have been created successfully!",
                  style: TextStyle(
                    fontSize: 27.sp,
                    fontWeight: FontWeight.w400,
                    height: 0.8.h,
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
                      builder: (context) => const LoginScreen1(),
                    ),
                  );
                },
                text: 'Continue',
                color: Colors.black,
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
