import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app_clone/drawer_items/events_screen.dart';
import 'package:nike_app_clone/drawer_items/favorite_screen.dart';
import 'package:nike_app_clone/drawer_items/inbox_screen.dart';
import 'package:nike_app_clone/drawer_items/orders_screen.dart';
import 'package:nike_app_clone/drawer_items/settings_screen.dart';
import 'package:nike_app_clone/tabs/jordan_tab.dart';
import 'package:nike_app_clone/tabs/kids_tab.dart';
import 'package:nike_app_clone/ui/signup/signup_screen.dart';
import 'package:nike_app_clone/tabs/men_tab.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> drawerItems = [
      {
        "icon": Icons.home,
        "text": "Discover",
        "onTap": () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignUpScreen(),
            ),
          );
        }
      },
      {
        "icon": Icons.search,
        "text": "Shop",
        "onTap": () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignUpScreen(),
            ),
          );
        }
      },
      {
        "icon": Icons.event,
        "text": "Events",
        "onTap": () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EventScreen(),
            ),
          );
        }
      },
      {
        "icon": Icons.shopping_bag,
        "text": "Orders",
        "onTap": () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OrdersScreen(),
            ),
          );
        }
      },
      {
        "icon": Icons.favorite,
        "text": "Favourites",
        "onTap": () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FavouriteScreen(),
            ),
          );
        }
      },
      {
        "icon": Icons.email,
        "text": "Inbox",
        "onTap": () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const InboxScreen(),
            ),
          );
        }
      },
      {
        "icon": Icons.settings,
        "text": "Settings",
        "onTap": () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SettingScreen(),
            ),
          );
        }
      },
    ];

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(110.0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 2.sp),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2), // Shadow color
                  offset: const Offset(0, 2), // Offset
                ),
              ],
            ),
            child: AppBar(
              iconTheme: IconThemeData(
                size: 25.sp, // Adjust the size according to your needs
              ),
              title: Text(
                'Shop',
                style: TextStyle(color: Colors.black, fontSize: 20.sp),
              ),
              //search and cart icon
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 25.sp,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_bag,
                    size: 25.sp,
                  ),
                )
              ],
              //tab bar
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 320.w,
                      child: TabBar(
                        indicatorColor: Colors.black,
                        labelPadding: EdgeInsets.only(right: 10.0.sp),
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(
                            child: Text(
                              'Men',
                              style: TextStyle(
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Women',
                              style: TextStyle(
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Kids',
                              style: TextStyle(
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Jordan',
                              style: TextStyle(
                                fontSize: 15.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        //tab bar view
        body: const TabBarView(
          children: [
            MenTab(),
            MenTab(),
            KidsTab(),
            JordanTab(),
          ],
        ),
        //drawer
        drawer: Drawer(
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10.sp),
            shrinkWrap: true,
            itemCount: drawerItems.length + 1, // Add 1 for the DrawerHeader
            itemBuilder: (context, index) {
              if (index == 0) {
                // This is the DrawerHeader
                return DrawerHeader(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30.sp,
                        backgroundImage:
                            const AssetImage('assets/images/signup.jpeg'),
                      ),
                      SizedBox(height: 8.sp),
                      Text(
                        'Krishna Bhatia',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                // These are the list items
                final itemIndex = index - 1; // Adjust for the DrawerHeader
                return ListTile(
                  leading: Icon(drawerItems[itemIndex]["icon"]),
                  title: Text(drawerItems[itemIndex]["text"]),
                  onTap: drawerItems[itemIndex]["onTap"],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
