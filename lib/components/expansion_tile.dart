import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainExpansionTile extends StatefulWidget {
  const MainExpansionTile({super.key});

  @override
  State<MainExpansionTile> createState() => _MainExpansionTileState();
}

class _MainExpansionTileState extends State<MainExpansionTile> {
  final List<String> imagePaths = [
    "assets/images/image_part_001.jpg",
    "assets/images/image_part_002.jpg",
    "assets/images/image_part_003.jpg",
    "assets/images/image_part_004.jpg",
    "assets/images/image_part_005.jpg",
  ];
  final List<String> titles = [
    "New & Featured",
    "Shoes",
    "Clothing",
    "Accesories",
    "Sale",
  ];
  List<String> subExpansionTitles = [
    "Shop All Sale",
    "Shoes",
    "Clothing",
    "Accessories",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildExpansionTile(
            "assets/images/image_part_001.jpg", "New & Featured"),
        _buildExpansionTile("assets/images/image_part_002.jpg", "Shoes"),
        _buildExpansionTile("assets/images/image_part_003.jpg", "Clothing"),
        _buildExpansionTile("assets/images/image_part_004.jpg", "Accessories"),
        _buildExpansionTile("assets/images/image_part_005.jpg", "Sale"),
      ],
    );
  }
}

Widget _buildExpansionTile(String imagePath, String title) {
  return Container(
    // decoration: BoxDecoration(
    //   image: DecorationImage(
    //     image: AssetImage(imagePath),
    //     fit: BoxFit.cover,
    //   ),
    // ),

    child: ExpansionTile(
      
      title: Container(
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.black, width: 4),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        height: 70.h,
        width: double.infinity,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
            ),
          ),
        ),
      ),
      trailing: const SizedBox.shrink(),
      children: [
        Container(
          // color: Colors.white,
          child: SizedBox(
            height: 50.h,
            child: ListTile(
              title: Text(
                "Shoes",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp,
                ),
              ),
              onTap: () {},
            ),
          ),
        ),
      ],
    ),
  );
}
