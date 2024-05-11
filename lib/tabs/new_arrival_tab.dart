import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app_clone/screens/product_detail.dart';

class NewArrivalTab extends StatelessWidget {
  const NewArrivalTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 10,
          mainAxisExtent: 350,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductDetail(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/image3.png',
                  fit: BoxFit.fill,
                  height: 200,
                  width: double.infinity,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jordan Spizike Low',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "Men's Shoes",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13.sp,
                        color: const Color.fromARGB(255, 119, 118, 118),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "MRP : ₹ 14 995.00",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
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
