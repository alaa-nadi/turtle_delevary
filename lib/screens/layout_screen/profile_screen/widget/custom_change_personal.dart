import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/colors/app_colors.dart';

class CustomChangePersonal extends StatelessWidget {
   const CustomChangePersonal({super.key,required this.text, this.iconx});
   final String text;
   final String? iconx;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(children: [
            if (iconx != null) ...[
              SvgPicture.asset(iconx!),

            ],
            SizedBox(width: 10,),
            Text(text,style: TextStyle(color: AppColors.colorBlack,fontSize: 19.sp, fontWeight: FontWeight.w600, fontFamily: 'Rubik',),),
            Spacer(),
            Icon(Icons.chevron_right)
          ],
          )
        ],
      ),
    );
  }
}
