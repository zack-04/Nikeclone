import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app_clone/components/common_text.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<String> imagePaths = [
    "assets/images/image.png",
    "assets/images/image2.png",
    "assets/images/image3.png",
  ];
  final List<String> productDetails = [
    "Shown: White/Pure Platinum/Obsidian",
    "Style: FQ1759-104",
    "Country/Region of Origin: Vietnam",
  ];
  final List<MyItem> _list = [
    MyItem(header: 'Size and Fit', body: 'body', index: 0),
    MyItem(header: 'Reviews (24)', body: 'body', index: 1),
    MyItem(
        header: 'Product Information',
        body:
            'Declaration of Importer: Direct import by the individual customer.',
        index: 2),
  ];
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
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
              'Jordan Spizike Low',
              style: TextStyle(color: Colors.black, fontSize: 18.sp),
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
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: List.generate(
                      imagePaths.length,
                      (index) => Image.asset(
                        imagePaths[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 300),
                  bottom: 40,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 50.sp),
                    color: Colors.grey,
                    child: Row(
                      children: List.generate(
                        imagePaths.length,
                        (index) => Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width /
                                imagePaths.length,
                            height: 3,
                            color: index == _currentPage
                                ? Colors.grey
                                : Colors.grey[200],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 5.h),
            Container(
              margin: EdgeInsets.only(left: 5.sp),
              height: 140.h,
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
                              builder: (context) => const ProductDetail(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/images/image2.png',
                          height: 120.h,
                          width: 140.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: "Men's Shoes",
                    fontSize: 15.sp,
                    color: Colors.black,
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "Jordan Spizike Low",
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  CommonText(
                    text: "MRP : ₹ 14 995.00",
                    fontSize: 15.sp,
                    color: Colors.black,
                  ),
                  SizedBox(height: 5.h),
                  CommonText(
                    text:
                        "Incl. of taxes\n(Also includes all applicable duties)",
                    fontSize: 15.sp,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 40.h),
                  Text(
                    "The Spizike takes elements of five classic Jordans, combines them and gives you one Iconic sneaker. It's an homage to Spike Lee formally introducing Hollywood and hoops in a culture moment. You get a great-looking pair of kicks with some history. What more can you ask for? Ya dig?",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      height: 1.3.h,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 50.h),
                  Text(
                    "Benefits",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "The real and synthetic leather and textile upper adds durability",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Nike Air technology absorbs impact for cushioning with every step",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Solid rubber outsole provides durability and traction.",
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    softWrap: true,
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    height: 60.h,
                    child: ListView.builder(
                      itemCount: productDetails.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 5.sp,
                            ),
                            SizedBox(width: 10.sp),
                            Text(
                              productDetails[index],
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CommonText(
                    text: "View Product Details",
                    fontSize: 15.sp,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    height: 50.h,
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Size UK 12',
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 5.h),
                          const Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  SizedBox(
                    height: 50.h,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      child: Text(
                        'Add to Bag',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  SizedBox(
                    height: 50.h,
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Favourite',
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 5.h),
                          const Icon(
                            Icons.favorite_outline,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  ExpansionPanelList(
                    dividerColor: Colors.grey,
                    expansionCallback: (panelIndex, isExpanded) {
                      setState(() {
                        _list[panelIndex].isExpanded =
                            !_list[panelIndex].isExpanded;
                      });
                    },
                    children: _list.map((MyItem item) {
                      return ExpansionPanel(
                        headerBuilder: (context, isExpanded) {
                          return Container(
                            margin: EdgeInsets.only(left: 5.sp),
                            height: 70.h,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                item.header,
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          );
                        },
                        body: Text(item.body),
                        isExpanded: item.isExpanded,
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 40.h),
                  Container(
                    alignment: Alignment.center,
                    height: 60.h,
                    child: Column(
                      children: [
                        Icon(
                          Icons.share,
                          size: 25.sp,
                        ),
                        Text(
                          'Share',
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Divider(
                    color: Colors.grey[300],
                    height: 1,
                  ),
                  SizedBox(height: 20.h),
                  CommonText(
                    text: "*Store availability and pricing not guaranteed.",
                    fontSize: 14.sp,
                    color: const Color.fromARGB(255, 133, 132, 132),
                  ),
                  SizedBox(height: 100.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomIndicator extends StatelessWidget {
  final int count;
  final int currentIndex;

  const CustomIndicator({
    super.key,
    required this.count,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      bottom: 40,
      left: 0,
      right: 0,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 50.sp),
        color: Colors.grey,
        child: Row(
          children: List.generate(
            7,
            (index) => Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width / count,
                height: 3,
                color: index == currentIndex ? Colors.grey : Colors.grey[200],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyItem {
  MyItem({
    this.isExpanded = false,
    required this.header,
    required this.body,
    required this.index,
  });

  bool isExpanded;
  final String header;
  final String body;
  final int index;
}
