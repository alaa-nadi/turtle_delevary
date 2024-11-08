import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:turtle_delevary/screens/select_language/widget/custom_container.dart';

import '../../shared/colors/app_colors.dart';
import '../../shared/componant/custom_button.dart';
import '../login_screen/login_screen.dart';

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
                color: AppColors.colorWhite,
              ),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      SizedBox(width: 30.w,),
                      Text(
                        'Choose the language',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Rubik',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 40.w, end: 40.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomContainer(
                          text: 'Norway',
                          isActiv: false,
                        ),
                        SizedBox(height: 20.h),
                        const CustomContainer(
                          text: 'English',
                          isActiv: false,
                        ),
                        SizedBox(height: 50.h),
                        Text(
                          'Easily switch to your preferred\nlanguage in the settings menu.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Rubik',
                          ),
                        ),
                        SizedBox(height: 50.h),
                        Center(
                          child: CustomButton(
                            text: 'Next',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()),
                              );
                            }, color: AppColors.colorBlack,
                          ),
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
