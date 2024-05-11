import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonText extends StatelessWidget {
  const CommonText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.color,
  });
  final String text;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.sp,
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize, color: color),
        ),
      ),
    );
  }
}
