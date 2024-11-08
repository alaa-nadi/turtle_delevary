import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turtle_delevary/shared/colors/app_colors.dart';

class ToggleButton extends StatefulWidget {
  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isToggled = !isToggled;
        });
      },
      child: Container(
        width: 51.w,
        height: 20.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0.sp),
          color: isToggled ? Colors.green : Colors.grey,
        ),
        child: AnimatedAlign(
          duration: Duration(milliseconds: 200.bitLength),
          curve: Curves.easeInOut,
          alignment: isToggled ? Alignment.centerRight : Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              width: 10.0.w,

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:AppColors.colorWhite,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
