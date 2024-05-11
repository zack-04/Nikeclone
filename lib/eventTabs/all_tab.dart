import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllTab extends StatelessWidget {
  const AllTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 15,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          // childAspectRatio: 1,
          mainAxisSpacing: 10,
          mainAxisExtent: 400,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(
                'assets/images/signup.jpeg',
                fit: BoxFit.cover,
                height: 250,
                width: double.infinity,
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 15.sp, vertical: 15.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Unreal Studio',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      'Tue, 26 Mar - Tue, 30 Apr',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15.sp,
                        color: const Color.fromARGB(255, 119, 118, 118),
                        height: 1.h,
                      ),
                      softWrap: true,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      '529 Broadway',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15.sp,
                        color: const Color.fromARGB(255, 119, 118, 118),
                      ),
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
