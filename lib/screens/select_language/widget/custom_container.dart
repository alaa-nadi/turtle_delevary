import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:now/shared/colors/app_colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.text,
    this.isActiv = false,

  });

  final String text;
  final bool isActiv;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.colorBlack,
          width: 2.0,
        ),
        color: isActiv ? AppColors.colorbrawn : AppColors.colorGarie,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SizedBox(width: 11.w),
          SvgPicture.asset(isActiv?'assets/images/Radio.svg':'assets/images/Radio.svg'),
          SizedBox(width: 12.w),
          Text(
            text,
            style: TextStyle(
              fontSize: 16.sp,
              color: isActiv ? AppColors.colorWhite : AppColors.colorBlack,
            ),
          ),
        ],
      ),
    );
  }
}
