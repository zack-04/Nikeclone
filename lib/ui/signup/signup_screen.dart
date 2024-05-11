import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app_clone/ui/signup/signup_screen1.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenHeight,
      child: Stack(
        fit: StackFit.expand,
        children: [
          //bg image
          Image.asset(
            'assets/images/signup.jpeg',
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
          //logo
          Positioned(
            bottom: 350.sp,
            left: 20.sp,
            child: Image.asset(
              'assets/images/logo.png',
              width: 70.w,
              height: 70.h,
            ),
          ),
          //text
          Positioned(
            left: 20.sp,
            bottom: 165.sp,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Nike App\nBringing Nike Members\nthe best products,\ninspiration and stories\nin sport.',
                style: TextStyle(
                  fontSize: 23.sp,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  height: 1.1.h,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          //buttons
          Positioned(
            bottom: 80.sp,
            width: ScreenUtil().screenWidth,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //join us button
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen1(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: Size(double.infinity, 50.h),
                      ),
                      child: Text(
                        'Join Us',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  //sign in button
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen1(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        minimumSize: Size(double.infinity, 50.h),
                        side: BorderSide(color: Colors.white, width: 1.w),
                      ),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
