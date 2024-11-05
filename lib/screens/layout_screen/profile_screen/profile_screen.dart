import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:turtle_delevary/screens/layout_screen/profile_screen/widget/custom_change_personal.dart';


import '../../../shared/colors/app_colors.dart';


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Account')),
        leading: Container(
          margin: EdgeInsets.all(7.0.w),
          decoration: BoxDecoration(
            color: AppColors.colorBorderI, // لون الخلفية للإطار
            shape: BoxShape.circle,
            boxShadow: [
            ],
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back, color:AppColors.colorBlack), // أيقونة الرجوع
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body:Column(
        children: [
          Container(
        child: Row(
          children: [
            SvgPicture.asset('assets/images/Profile.svg'),
            Column(children: [
              Text('Mohammed ahmed'),
              Text('edit profile',style: TextStyle(color: AppColors.colorMusterApp),),
            ],),
          ],
        ),
          ),
          Container(color: AppColors.colorBorderI,
            child: Column(children: [
              CustomChangePersonal(iconx:' assets/images/lock.svg',text: 'Change Password',),
              CustomChangePersonal(iconx:' assets/images/clarity_language-line.svg',text: 'Change Language',),
              CustomChangePersonal(iconx: 'assets/images/ri_customer-service-2-fill.svg',text: 'Customer Care',),
              CustomChangePersonal(iconx:'assets/images/formkit_help.svg',text: 'Help',),
            ],),),
          Container(child:  Row(children: [
            Text(
              'If you select Deactivate, you won’t be able to get\n'
                  ' orders until you change status to Activate.',),
          ],),),
        ],
      )
    );
  }
}