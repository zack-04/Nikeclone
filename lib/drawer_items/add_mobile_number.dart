import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app_clone/components/custom_elevated_button.dart';

class AddMobileNumber extends StatefulWidget {
  const AddMobileNumber({super.key});

  @override
  State<AddMobileNumber> createState() => _AddMobileNumberState();
}

class _AddMobileNumberState extends State<AddMobileNumber> {
  bool isCheckedBox1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mobile Number',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.sp,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 22.sp, right: 20.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            Text(
              'Add your mobile phone\nnumber',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 28.sp,
              ),
            ),
            SizedBox(height: 15.h),
            Text(
              "We'll send you a secure, one-time\nverification code.",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15.sp,
              ),
            ),
            SizedBox(height: 15.h),
            //textfield
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        label: const Row(
                          children: [Text('+91'), Icon(Icons.arrow_drop_down)],
                        ),
                        contentPadding: const EdgeInsets.all(20.0),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(width: 5.w),
                Expanded(
                  flex: 7,
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: const Text('Mobile Number'),
                      contentPadding: const EdgeInsets.all(20.0),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            //checkbox
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Transform.scale(
                  scale: 1.4,
                  child: Checkbox(
                    value: isCheckedBox1,
                    onChanged: (value) {
                      setState(() {
                        isCheckedBox1 = value!;
                      });
                    },
                    activeColor: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      height: 1.2.h,
                    ),
                    children: const [
                      TextSpan(
                        text:
                            "I agree to receive one SMS message\nto verify my device, and accept Nike's\n",
                      ),
                      TextSpan(
                        text: 'Privacy Policy ',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: ' and ',
                      ),
                      TextSpan(
                        text: 'Terms of Use',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Msg&Data rates may apply. You may experience a\ndelay if there are issues with your mobile provider',
                style: TextStyle(
                    color: Colors.grey, fontSize: 13.sp, height: 1.3.h),
              ),
            ),
            SizedBox(height: 20.h),
            CustomElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const ShopScreen(),
                //   ),
                // );
              },
              text: 'Send Code',
              color: const Color.fromARGB(255, 231, 226, 226),
              textColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
