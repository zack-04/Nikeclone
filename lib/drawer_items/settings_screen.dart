import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nike_app_clone/components/custom_list_view.dart';
import 'package:nike_app_clone/drawer_items/add_mobile_number.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> settingNames1 = [
      "Country/Region",
      "Store Language",
      "Shopping Settings",
      "Delivery Information",
      "Payment Information",
    ];
    List<String> settingNames2 = [
      "Privacy",
      "Profile Visibility",
      "Blocked Users",
      "Workout Info",
    ];
    List<String> settingNames3 = [
      "Find a Nike Store",
      "Get Support",
      "Find an Event",
      "Explore our Apps",
    ];
    List<String> settingNames4 = [
      "About this version",
      "Terms of Use",
      "Privacy Policy",
    ];
    List<String> settingNames5 = [
      "Notifications",
      "Location Settings",
    ];
    List<String> settingNames6 = [
      "Terms of Sale",
    ];
    List<String> settingNames7 = [
      "Delete Account",
    ];

    List<String> settingNames8 = [
      "Log Out",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.sp),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.sp,
                  ),
                ),
                onTap: () {},
                trailing: Text(
                  'bhatiakrishna529@gmail.com',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Colors.grey,
                  ),
                ),
              ),
              Divider(
                color: Colors.grey[300],
                height: 1,
              ),
              ListTile(
                title: Text(
                  'Mobile Number',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.sp,
                  ),
                ),
                onTap: () {},
                trailing: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddMobileNumber(),
                      ),
                    );
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.grey[300],
                height: 1,
              ),
              ListTile(
                title: Text(
                  'Date of Birth',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.sp,
                  ),
                ),
                onTap: () {},
                trailing: Text(
                  '19/06/2004',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Colors.grey,
                  ),
                ),
              ),
              Divider(
                color: Colors.grey[300],
                height: 1,
              ),
              ListTile(
                title: Text(
                  'Units of Measure',
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
              ),
              CustomListView(list: settingNames1),
              CustomListView(list: settingNames2),
              CustomListView(list: settingNames3),
              CustomListView(list: settingNames4),
              CustomListView(list: settingNames5),
              CustomListView(list: settingNames6),
              CustomListView(list: settingNames7),
              CustomListView(list: settingNames8),
            ],
          ),
        ),
      ),
    );
  }
}
