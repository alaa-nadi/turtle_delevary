import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:now/screens/select_language/widget/custom_container.dart';
import 'package:now/shared/colors/app_colors.dart';
import '../../shared/componant/custom_button.dart';
import '../login/login_screen.dart';

class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorMusterApp,
      body: Column(
        children: [
          SizedBox(height: 130.h),
          SvgPicture.asset('assets/images/Frame.svg'),
          SizedBox(height: 40.h),
          Expanded(
            child: Container(
             
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(35.r),
                  topStart: Radius.circular(35.r),
                ),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [SizedBox(height: 20.h),
                  Text(
                    'Choose the language',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding:  EdgeInsetsDirectional.only(start: 40.w,end: 40.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        CustomContainer(text: 'Norway',isActiv: false,),
                        SizedBox(height: 20.h),
                        CustomContainer(text: 'English',isActiv: false,),
                        SizedBox(height: 50.h),
                        Text(
                          'Easily switch to your preferred\nlanguage in the settings menu.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 50.h),
                        CustomButton(
                          text: 'Next',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Loginscreen()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
