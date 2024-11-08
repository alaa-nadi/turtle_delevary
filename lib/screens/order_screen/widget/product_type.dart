import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/colors/app_colors.dart';

class ProductType extends StatelessWidget {
  const ProductType({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Image.asset(
              'assets/images/71olebMVg9L 1.jpg',
            ),
          ),
          SizedBox(width: 15.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Green Cola',
                style: TextStyle(
                  fontSize: 17.sp,
                  color: AppColors.colorBlack,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Qty: 1',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.colorBackItem,
                ),
              ),
              Text(
                '220 NOK',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.colorBackItem, fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
