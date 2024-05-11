import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app_clone/eventTabs/all_tab.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  // late TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
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
              iconTheme: IconThemeData(
                size: 25.sp,
              ),

              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.event,
                    size: 25.sp,
                  ),
                ),
              ],
              //tab bar
              bottom: TabBar(
                // controller: _tabController,
                indicatorColor: Colors.white,
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
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
                      'Dance',
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Mindfulness',
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Running',
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Skateboarding',
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Yoga',
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Training',
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
              ),
            ),
          ),
        ),
        //tab bar view

        body: const TabBarView(
          // controller: _tabController,
          children: [
            AllTab(),
            AllTab(),
            AllTab(),
            AllTab(),
            AllTab(),
            AllTab(),
            AllTab(),
            AllTab(),
          ],
        ),
      ),
    );
  }
}
