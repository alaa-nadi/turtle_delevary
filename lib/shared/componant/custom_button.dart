import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../shared/colors/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    required this.text,
    required this.color,
    this.images,
  });

  final VoidCallback? onTap;
  final String text;
  final Color color;
  final String? images;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 51.h,
        width: 296.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (images != null) ...[
              SvgPicture.asset(images!),
              SizedBox(width: 8.w),
            ],
            Text(
              text,
              style: const TextStyle(color: AppColors.colorWhite),
            ),
          ],
        ),
      ),
    );
  }
}
