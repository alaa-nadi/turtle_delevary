import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/colors/app_colors.dart';
import '../../../shared/componant/custom_appbar.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhite,
      appBar:  CustomAppbar(color: AppColors.colorWhite,text: 'Wallet',),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          children: [
            SizedBox(height: 50.h,),
            Container(
            height: 140.h,
              width: 383.w,
              decoration: BoxDecoration(
                color: AppColors.colorMusterApp,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Row(
                children: [
                 Image.asset(
                    'assets/images/oottnn.jpg',
                    width: 158.w,
                    height:135.h,
                  ),
                  SizedBox(width: 10.w), // Add spacing between SVG and Text
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Wallet Balance',
                        style: TextStyle(
                          fontSize: 19.sp,
                          color: AppColors.colorWhite,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        '200 NOK',
                        style: TextStyle(
                          fontSize: 19.sp,
                          color: AppColors.colorWhite,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20,),
                  SvgPicture.asset(
                    'assets/images/flat-color-icons_plus.svg',
                    width: 37.w,
                    height: 37.w,
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.h), // Add spacing between containers
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
              decoration: BoxDecoration(
                color: AppColors.colorPaleGreenGray,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Row(
                children: [
                  Text(
                    'Transaction history',
                    style: TextStyle(
                      fontSize: 19.sp,
                      color: AppColors.colorBackGround,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_up_sharp,
                    size: 40.sp,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
