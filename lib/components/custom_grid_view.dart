import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.sp),
      height: 550,
      child: GridView.builder(
        padding: EdgeInsets.only(right: 20.sp),
        physics: const ClampingScrollPhysics(),
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4,
          // childAspectRatio: 1,
          mainAxisSpacing: 10,
          mainAxisExtent: 260,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(
                'assets/images/signup.jpeg',
                fit: BoxFit.cover,
                height: 120,
                width: double.infinity,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nike Air Force\n1 "07',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                      softWrap: true,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      'MRP:',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: const Color.fromARGB(255, 105, 104, 104),
                        height: 1.h,
                      ),
                      softWrap: true,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      '₹ 7495.00',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: const Color.fromARGB(255, 105, 104, 104),
                      ),
                      softWrap: true,
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
