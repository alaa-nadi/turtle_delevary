import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/colors/app_colors.dart';
import '../../shared/componant/custom_text_field.dart';
import '../../shared/componant/custom_button.dart';
import '../layout_screen/layout_screen.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              child: Padding(
                padding: EdgeInsets.all(22.sp),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    CustomTextfield(
                      labelText: 'Phone number',
                      icon: Icons.phone,
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    CustomTextfield(
                      labelText: 'Password',
                      icon: Icons.lock,
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            fontSize: 19.sp, // حجم الخط
                            decoration: TextDecoration.underline, // إضافة خط تحت النص
                            decorationColor: AppColors.colorMusterApp, // تحديد لون الخط تحت النص (اختياري)
                            decorationThickness: 1.0,
                            color: AppColors.colorMusterApp,
                          fontFamily: 'Rubik',
                        ),

                      ),
                    ),
                    SizedBox(
                      height: 44.h,
                    ),
                    CustomButton(
                      onTap:(){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  LayoutScreen()),
                        );
                      },
                      text: 'Sign in', color: AppColors.colorBlack,
                    ),
                    SizedBox(height: 20.h,),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'By continue you agree to our',
                            style: TextStyle(color: AppColors.colorMusterApp, fontFamily: 'Rubik',), // اللون الأول
                          ),
                          TextSpan(
                            text: 'Terms&      Conditions& Privacy policy',
                            style: TextStyle(color:AppColors.colorBlack, fontFamily: 'Rubik',), // اللون الثاني
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    //  textAlign: TextAlign.center,
                    )

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );

  }
}
