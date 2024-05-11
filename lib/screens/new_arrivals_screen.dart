import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app_clone/tabs/new_arrival_tab.dart';

class NewArrivalScreen extends StatefulWidget {
  const NewArrivalScreen({super.key});

  @override
  State<NewArrivalScreen> createState() => _NewArrivalScreenState();
}

class _NewArrivalScreenState extends State<NewArrivalScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  // final int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 8, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110.0),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2), // Shadow color
                offset: const Offset(0, 2), // Offset
              ),
            ],
          ),
          child: AppBar(
            title: Text(
              'New Arrivals',
              style: TextStyle(color: Colors.black, fontSize: 20.sp),
            ),
            iconTheme: IconThemeData(
              size: 25.sp,
            ),

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
            bottom: TabBar(
              controller: controller,
              indicatorColor: Colors.black,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              labelPadding: EdgeInsets.symmetric(horizontal: 20.h),
              tabs: [
                Tab(
                  child: Text(
                    'All',
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                  
                ),
                Tab(
                  child: Text(
                    'Shoes',
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Jackets',
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Hoodies',
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Trousers & Tights',
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Shorts',
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Tops & T-Shirt',
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Others',
                    style: TextStyle(
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ],
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
            ),
          ),
        ),
      ),
      //tab bar view
      body: TabBarView(
        controller: controller,
        children: const [
          NewArrivalTab(),
          NewArrivalTab(),
          NewArrivalTab(),
          NewArrivalTab(),
          NewArrivalTab(),
          NewArrivalTab(),
          NewArrivalTab(),
          NewArrivalTab(),
        ],
      ),
    );
  }
}
