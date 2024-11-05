import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/colors/app_colors.dart';

class CustomChangePersonal extends StatelessWidget {
   CustomChangePersonal({super.key,required this.text,required this.iconx});
   final String text;
   final String iconx;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(children: [
      SvgPicture.asset(iconx),
            Text(text),
            Icon(Icons.chevron_right)
          ],
          )
        ],
      ),
    );
  }
}
