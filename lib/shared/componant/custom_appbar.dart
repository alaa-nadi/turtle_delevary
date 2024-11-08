import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/app_colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key,this.text,this.color});
final String? text ;
final Color? color;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: color,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          SizedBox(width: 13.w),
          Container(
            margin: EdgeInsets.all(7.0.w),
            decoration: BoxDecoration(
              color: AppColors.colorWhiteB,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: AppColors.colorBlack),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          SizedBox(width: 75.w),
          Text(text!,style: TextStyle(fontSize: 19.44.sp, fontWeight: FontWeight.w600, fontFamily: 'Rubik',),)
        ],
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(15.r),
        child: Container(
          height: 1,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.colorBlack.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 1.r,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 15.r);
}
