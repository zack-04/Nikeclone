import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app_clone/screens/new_arrivals_screen.dart';
import 'package:nike_app_clone/screens/product_detail.dart';

class CustomListView2 extends StatelessWidget {
  const CustomListView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.sp,),
      height: 200.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(
          width: 6.w,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NewArrivalScreen(),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/signup.jpeg',
                    height: 140.h,
                    width: 140.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              SizedBox(
                width: 140.w,
                child: Text(
                  'Nike Golf Collection',
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
