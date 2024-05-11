import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app_clone/components/common_text.dart';
import 'package:nike_app_clone/components/custom_grid_view.dart';
import 'package:nike_app_clone/components/custom_list_view2.dart';
import 'package:nike_app_clone/components/kids_grid_view.dart';

class KidsTab extends StatelessWidget {
  const KidsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 20.sp),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.h),
              CommonText(
                text: 'Shop by Occasions / Age',
                fontSize: 20.sp,
                color: Colors.black,
              ),
              SizedBox(height: 15.h),
              const KidsGridView(),
              const KidsGridView2(),
              SizedBox(height: 50.h),
              CommonText(
                text: 'This Week Highlights',
                fontSize: 20.sp,
                color: Colors.black,
              ),
              SizedBox(height: 15.h),
              const CustomListView2(),
              CommonText(
                text: 'App Drops',
                fontSize: 20.sp,
                color: Colors.black,
              ),
              SizedBox(height: 15.h),
              const CustomListView2(),
              CommonText(
                text: 'Find Your Max',
                fontSize: 20.sp,
                color: Colors.black,
              ),
              SizedBox(height: 15.h),
              const CustomListView2(),
              CommonText(
                text: 'Our Bestsellers',
                fontSize: 20.sp,
                color: Colors.black,
              ),
              SizedBox(height: 15.h),
              const CustomGridView(),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: Text(
                    'View all',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              CommonText(
                text: 'Shop by Colour',
                fontSize: 20.sp,
                color: Colors.black,
              ),
              SizedBox(height: 15.h),
              const CustomListView2(),
              CommonText(
                text: 'Explore Our Top Road-Running\nShoes',
                fontSize: 20.sp,
                color: Colors.black,
              ),
              SizedBox(height: 15.h),
              const CustomListView2(),
            ],
          ),
        ),
      ),
    );
  }
}
