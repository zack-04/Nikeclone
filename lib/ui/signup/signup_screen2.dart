import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nike_app_clone/backend/appwrite_provider.dart';
import 'package:nike_app_clone/components/custom_elevated_button.dart';
import 'package:nike_app_clone/ui/signup/signup_screen4.dart';

class SignUpScreen2 extends StatefulWidget {
  const SignUpScreen2({super.key, required this.email});
  final String email;

  @override
  State<SignUpScreen2> createState() => _SignUpScreen2State();
}

class _SignUpScreen2State extends State<SignUpScreen2> {
  final TextEditingController _code = TextEditingController();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _surName = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _dob = TextEditingController();
  final _globalKey = GlobalKey<FormState>();
  DateTime? selectedDate;
  bool _isCheckedBox1 = false;
  bool _isCheckedBox2 = false;
  bool isFormValid = false;

  @override
  void dispose() {
    _code.dispose();
    _firstName.dispose();
    _surName.dispose();
    _password.dispose();
    _dob.dispose();
    super.dispose();
  }

  void validateAndSave() async {
    isFormValid = _globalKey.currentState!.validate();
    if (!isFormValid) {
      return;
    } else {
      _globalKey.currentState!.save();
      await AppWriteProvider().signup({
        "firstName": _firstName.text,
        "surName": _surName.text,
        "password": _password.text,
        "dob": _dob.text,
      }).then(
        (value) => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Account created'),
          ),
        ),
      );
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    if (selectedDate == null) {
      final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2101),
      );
      if (pickedDate != null) {
        setState(() {
          selectedDate = pickedDate;
          _dob.text = pickedDate.toLocal().toString().split(' ')[0];
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Padding(
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
                    "Now let's make you a\nNike Member.",
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w400,
                      height: 0.8.h,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
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
                          text: "We've sent a code to\n",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
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
                SizedBox(height: 20.h),
                //form
                Form(
                  key: _globalKey,
                  child: Column(
                    children: [
                      //code
                      TextFormField(
                        controller: _code,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Field can't be empty";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: const Text('Code'),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          suffixIcon: const Icon(Icons.swap_horiz),
                        ),
                      ),
                      const SizedBox(height: 30),
                      //first name and surname
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _firstName,
                              decoration: InputDecoration(
                                label: const Text(
                                  'First name',
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 2, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: _surName,
                              decoration: InputDecoration(
                                label: const Text(
                                  'Surname',
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 2, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      //password
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
                      const SizedBox(height: 20),
                      //dob
                      TextFormField(
                        controller: _dob,
                        readOnly: true,
                        decoration: InputDecoration(
                          label: const Text(
                            'Date of birth',
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          helperText:
                              'Get a Nike Member Reward on your birthday',
                          suffixIcon: IconButton(
                            onPressed: () {
                              selectedDate == null
                                  ? _selectDate(context)
                                  : showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text('Warning'),
                                          content: const Text(
                                              'You have already selected a date. '),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('OK'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                            },
                            icon: const Icon(FontAwesomeIcons.calendarDays),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                //1st checkbox
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.scale(
                      scale: 1.4,
                      child: Checkbox(
                        value: _isCheckedBox1,
                        onChanged: (value) {
                          setState(() {
                            _isCheckedBox1 = value!;
                          });
                        },
                        activeColor: Colors.black,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      'Sign up for emails to get updates\nfrom Nike on prodcuts, offers and\nyour Member benifits.',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                //2nd checkbox
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.scale(
                      scale: 1.4,
                      child: Checkbox(
                        value: _isCheckedBox2,
                        onChanged: (value) {
                          setState(() {
                            _isCheckedBox2 = value!;
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
                            text: "I agree to Nike's ",
                          ),
                          TextSpan(
                            text: 'Privacy Policy ',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: 'and\n',
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
                SizedBox(height: 30.h),
                //custom elevated button
                CustomElevatedButton(
                  onPressed: () {
                    validateAndSave();
                    AppWriteProvider()
                        .verifyOtp(context, widget.email, _code.text);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen4(),
                      ),
                    );
                  },
                  text: 'Create Account',
                  color: Colors.black,
                  textColor: Colors.white,
                ),
                SizedBox(height: 30.h),
              ],
            ),
          )
        ],
      ),
    );
  }
}
