import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app_clone/components/custom_elevated_button.dart';
import 'package:nike_app_clone/ui/signup/signup_screen1.dart';
import 'package:nike_app_clone/ui/signup/signup_screen3.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  final TextEditingController _password = TextEditingController();
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
                  "What's your password?",
                  style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w400,
                    height: 0.8.h,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              //email and edit button
              Container(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16.0.sp,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      height: 1.2.h,
                    ),
                    children: const [
                      TextSpan(
                        text: 'john@mail.com ',
                      ),
                      TextSpan(
                        text: ' Edit',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              //password textfield
              TextFormField(
                controller: _password,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Field can't be empty";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: const Text('Password'),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  suffixIcon: const Icon(Icons.remove_red_eye),
                ),
              ),
              SizedBox(height: 30.h),
              //forgot password
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen1(),
                      ),
                    );
                  },
                  child: Text(
                    'Forgotten your password?',
                    style: TextStyle(
                      fontSize: 16.0.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              CustomElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen3(),
                    ),
                  );
                },
                text: 'Sign In',
                color: Colors.black,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
