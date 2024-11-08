import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:turtle_delevary/screens/layout_screen/home_screen/widget/custom_tabBar.dart';

import '../../../shared/colors/app_colors.dart';
import '../item/item_order.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.colorWhite,
        appBar: AppBar(
          backgroundColor: AppColors.colorWhite,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Image.asset('assets/images/turtle2-01 1.jpg'),
              SizedBox(width: 60.w),
               Text('Home',style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600,),),
              SizedBox(width: 130.w),
              SvgPicture.asset('assets/images/Group (1).svg'),
            ],
          ),
        ),
        body: Column(
          children: [
           const SizedBox(height: 30,),
            const CustomTabBar(),
            Expanded(
              child: TabBarView(
                children: [
                  Column(
                    children: [
                      SizedBox(height:30.h,),
                      ItemOrder(),
                    ],
                  ),
          Column(
              children: [
                SizedBox(height:30.h,),
                ItemOrder(),
              ],),
                  Column(
                    children: [
                      SizedBox(height:30.h,),
                      ItemOrder(color: AppColors.colorOrange,),
                    ],),
                  Column(
                    children: [
                      SizedBox(height:30.h,),
                      ItemOrder(color: AppColors.colorRed,),
                    ],),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
