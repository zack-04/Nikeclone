import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JordanExpansionTile extends StatefulWidget {
  const JordanExpansionTile({super.key});

  @override
  State<JordanExpansionTile> createState() => _JordanExpansionTileState();
}

class _JordanExpansionTileState extends State<JordanExpansionTile> {
  final List<String> imagePaths = [
    "assets/images/image_part_001.jpg",
    "assets/images/image_part_002.jpg",
    "assets/images/image_part_003.jpg",
    "assets/images/image_part_004.jpg",
    "assets/images/image_part_005.jpg",
  ];
  final List<String> titles = [
    "Jordan Men",
    "Jordan Women",
    "Jordan Kids",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: ListView.separated(
        physics: const ClampingScrollPhysics(),
        separatorBuilder: (context, index) => SizedBox(
          height: 4.h,
        ),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            height: 90.h,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.cyan, Color.fromARGB(255, 245, 191, 111)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight),
            ),
            child: ExpansionTile(
              title: Padding(
                padding: EdgeInsets.only(top: 15.sp, left: 15.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        titles[index],
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60.h,
                      width: 60.w,
                      child: Image.asset(
                        'assets/images/download1.jpg',
                      ),
                    )
                  ],
                ),
              ),
              trailing: const SizedBox.shrink(),
            ),
          );
        },
      ),
    );
  }
}
