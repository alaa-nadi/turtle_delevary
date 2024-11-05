import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:turtle_delevary/screens/layout_screen/home_screen/widget/custom_tabBar.dart';

import '../../../shared/colors/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.colorWhite,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Image.asset('assets/images/turtle2-01 1.jpg'),
              SizedBox(width: 50.w),
              Text('Home'),
              SizedBox(width: 120.w),
              SvgPicture.asset('assets/images/Group (1).svg'),
            ],
          ),
        ),
        body: Column(
          children: [
           SizedBox(height: 30,),
            CustomTabBar(),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('All Tab Content')),
                  Center(child: Text('Delivered Tab Content')),
                  Center(child: Text('Out for delivery Tab Content')),
                  Center(child: Text('Canceled Tab Content')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
