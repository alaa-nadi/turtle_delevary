import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:turtle_delevary/screens/layout_screen/profile_screen/widget/custom_change_personal.dart';
import '../../../../shared/colors/app_colors.dart';
import '../../../../shared/componant/custom_appbar.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhite,
      appBar: CustomAppbar(color: AppColors.colorWhite,text: 'Edit Profile',),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 20.w, end: 20.w),
        child: Column(
          children: [SizedBox(height: 50.h,),
            SvgPicture.asset('assets/images/edit_profike.svg'),
            SizedBox(height: 50.h,),
            Container(
              decoration: BoxDecoration(
                color: AppColors.colorWhiteB,
                borderRadius: BorderRadius.circular(15.sp),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // محاذاة النصوص إلى اليسار
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0.w), // إضافة حشو جانبي
                    child: Text(
                      'Name',
                      style: TextStyle(fontSize: 19.sp, color: AppColors.colorBlack),
                    ),
                  ),
                  CustomChangePersonal(text: 'Ahmed Mohammed'),
                  Divider(
                    color: AppColors.colorLine,
                    thickness: 1,
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0.w), // إضافة حشو جانبي
                    child: Text(
                      'Mobile number',
                      style: TextStyle(fontSize: 19.sp, color: AppColors.colorBlack),
                    ),
                  ),
                  CustomChangePersonal(text: '+64854269'),
                  Divider(
                    color: AppColors.colorLine,
                    thickness: 1,
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0.w), // إضافة حشو جانبي
                    child: Text(
                      'Email',
                      style: TextStyle(fontSize: 19.sp, color: AppColors.colorBlack),
                    ),
                  ),
                  CustomChangePersonal(text: 'Ahmed Mohammed@gmail.com'),
                  Divider(
                    color: AppColors.colorLine,
                    thickness: 1,
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0.w), // إضافة حشو جانبي
                    child: Text(
                      'City',
                      style: TextStyle(fontSize: 19.sp, color: AppColors.colorBlack),
                    ),
                  ),
                  CustomChangePersonal(text: 'Norway'),
                  SizedBox(height: 100,),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                       foregroundColor:AppColors.colorWhite, backgroundColor: AppColors.colorMusterApp,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.w),
                        ),
                        minimumSize: Size(300.w, 50.h),
                      ),
                      child: Text('save',style: TextStyle(fontSize: 19),),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


