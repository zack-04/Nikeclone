import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
    required this.list,
  });

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30.h,
          decoration: BoxDecoration(
            border: const Border.symmetric(
              horizontal: BorderSide(
                color: Color.fromARGB(255, 207, 206, 206),
              ),
            ),
            color: Colors.grey[100],
          ),
        ),
        ListView.separated(
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                list[index],
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.sp,
                ),
              ),
              onTap: () {},
              trailing: const FaIcon(
                FontAwesomeIcons.angleRight,
                color: Colors.grey,
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              color: Colors.grey[300],
              height: 1,
            );
          },
        ),
      ],
    );
  }
}
