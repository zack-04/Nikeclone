import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app_clone/backend/appwrite_provider.dart';
import 'package:nike_app_clone/components/custom_elevated_button.dart';
import 'package:nike_app_clone/ui/login/login_screen2.dart';
import 'package:nike_app_clone/ui/signup/signup_screen2.dart';

class SignUpScreen1 extends StatefulWidget {
  const SignUpScreen1({super.key});

  @override
  State<SignUpScreen1> createState() => _SignUpScreen1State();
}

class _SignUpScreen1State extends State<SignUpScreen1> {
  final TextEditingController _email = TextEditingController();
  final _globalKey = GlobalKey<FormState>();
  bool isFormValid = false;

  void checkEmail() async {
    isFormValid = _globalKey.currentState!.validate();
    if (!isFormValid) {
      return;
    } else {
      _globalKey.currentState!.save();
      final isSignedUp = await AppWriteProvider().checkUserSignUp(_email.text);
      if (isSignedUp) {
        if (mounted) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen2(),
            ),
          );
        }
      } else {
        if (mounted) {
          AppWriteProvider().sendVerificationCode(_email.text);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUpScreen2(
                email: _email.text,
              ),
            ),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
              SizedBox(
                height: 30.h,
              ),
              //text
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter your email to join\nus or sign in.',
                  style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w400,
                    height: 0.8.h,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              //country name
              Row(
                children: [
                  Text(
                    'United States',
                    style: TextStyle(fontSize: 15.sp),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Change',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      decorationThickness: 1.5.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              //email textfield
              SizedBox(
                child: Form(
                  key: _globalKey,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email can't be empty";
                      }
                      return null;
                    },
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              //text
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
              SizedBox(
                height: 20.h,
              ),
              //custom elevated button
              CustomElevatedButton(
                onPressed: () {
                  checkEmail();
                },
                text: 'Next',
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
