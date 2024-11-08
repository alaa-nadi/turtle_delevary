import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:turtle_delevary/screens/layout_screen/profile_screen/widget/custom_change_personal.dart';
import 'package:turtle_delevary/shared/componant/custom_appbar.dart';


import '../../../shared/colors/app_colors.dart';
import '../../../shared/componant/custom_button.dart';
import '../item/toggle_button.dart';
import 'edit_profile/edit_profile.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.colorWhite,
      appBar: CustomAppbar(color: AppColors.colorWhite,text: 'Account',),
        body:Padding(
        padding: EdgeInsetsDirectional.only(start: 30.w, end: 30.w),
        child: Column(
          children: [
            SizedBox(height: 50.h,),
            GestureDetector(
              onTap: (){Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EditProfile()),
              );},
              child: Container(
                        child: Row(
              children: [
                SvgPicture.asset('assets/images/Profile.svg'),
                SizedBox(width: 15,),
                Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Mohammed ahmed',style: TextStyle(fontSize: 19.44.sp, fontWeight: FontWeight.w600, fontFamily: 'Rubik',),),
                  Text('Edit profile',style: TextStyle(color: AppColors.colorMusterApp),),
                ],),
              ],),
              ),
            ),
            SizedBox(height: 50.h,),
            Container(
              decoration: BoxDecoration(color: AppColors.colorWhiteB,
                  borderRadius: BorderRadius.circular(15)),
           //   color: AppColors.colorWhiteB,
              child: Column(children: [
                CustomChangePersonal(iconx: 'assets/images/lock.svg', text: 'Change Password',),
                Divider(
                  color:AppColors.colorLine,
                  thickness: 1,
                  height:15.h,
                ),
                CustomChangePersonal(iconx: 'assets/images/clarity_language-line.svg', text: 'Change Language',),
                Divider(
                  color:AppColors.colorLine,
                  thickness: 1,
                  height:15.h,
                ),
                CustomChangePersonal(iconx: 'assets/images/ri_customer-service-2-fill.svg', text: 'Customer Care',),
                Divider(
                  color:AppColors.colorLine,
                  thickness: 1,
                  height:15.h,
                ),
                CustomChangePersonal(iconx: 'assets/images/formkit_help.svg', text: 'Help',),

              ],),),
            SizedBox(height: 50.h,),
            Container(
              height: 87.h,
              decoration: BoxDecoration(
                color: AppColors.colorWhiteB,
                borderRadius: BorderRadius.circular(15.w),
              ),
              child: Row(
                children: [
                  Expanded(  // This makes the Text widget take up the available space
                    child: Text(
                      'If you select Deactivate, you won’t be able to get'
                          ' orders until you change status to Activate',style: TextStyle(fontSize: 15.9.sp, fontWeight: FontWeight.w600, fontFamily: 'Rubik',),
                      softWrap: true,  // Ensures that the text wraps to the next line if it's too long
                    ),
                  ),
                  ToggleButton(),
                ],
              ),
            ),

            Spacer(),
            CustomButton(text: 'log out',color: AppColors.colorMusterApp,images: 'assets/images/Vector (1).svg',),
            SizedBox(height: 40.h,),
          ],
        ),
      )
    );
  }
}