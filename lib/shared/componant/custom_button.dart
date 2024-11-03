import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:now/main.dart';

import '../colors/app_colors.dart';

class CustomButton extends StatelessWidget {
   const CustomButton({super.key,this.onTap,this.text});
final onTap;
final text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 51.h,
        width:double.infinity,
        decoration: BoxDecoration(
          color:AppColors.colorBlack,
            borderRadius: BorderRadiusDirectional.circular(15)),
        child: Center(child: Text(text,style:const TextStyle(color:AppColors.colorWhite),)),
      ),
    );
  }
}
