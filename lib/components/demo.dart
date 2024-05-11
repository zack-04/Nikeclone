import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/image_part_001.jpg',
                ), // Your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (_isExpanded)
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _isExpanded = false;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Expanded content here
                      ExpansionTile(
                        title: const Text('data'),
                        children: [
                          Container(
                            color: Colors.white,
                            child: ListTile(
                              title: Text(
                                'subExpansionTitles[index]',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.sp,
                                ),
                              ),
                              onTap: () {},
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
