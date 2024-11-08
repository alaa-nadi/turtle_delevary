import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/colors/app_colors.dart';

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        height: 588.h,
        width: 372.w,
        decoration: BoxDecoration(
          color: AppColors.colorBox,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 20.w, end: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // لتوزيع المسافة بين النصوص
                children: [
                  Text('Delivery Tip',style: TextStyle(fontSize:19.sp),),
                  Text('50 NOK',style: TextStyle(fontSize: 16.sp),),
                ],
              ),
              Text('Restaurant Details',style: TextStyle(fontSize: 18.sp),),
              Divider(
                color: AppColors.colorLine,
                thickness: 1,
                height: 15.h,
              ),
              Text('The phantom kitchen',style: TextStyle(fontSize:18.sp),),
              Row(
                children: [
                  Icon(Icons.mail, color: AppColors.colorIcon),
                  Text('Ahmed Mohammed@gmail.com',style: TextStyle(fontSize: 20.sp,color: AppColors.colorLine),),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.phone, color: AppColors.colorIcon),
                  Text('+64 1234 5678',style: TextStyle(fontSize: 18.sp,color: AppColors.colorLine),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // لتوزيع النصوص
                children: [
                  Text('Shipping Details',style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600,),),
                  Text(
                    'Track Order',
                    style: TextStyle(
                        fontSize: 18.sp, // حجم الخط
                        decoration: TextDecoration.underline, // إضافة خط تحت النص
                        decorationColor: AppColors.colorMusterApp, // تحديد لون الخط تحت النص (اختياري)
                        decorationThickness: 1.0,
                        color: AppColors.colorMusterApp
                    ),
                  )
                ],
              ),
              Divider(
                color: AppColors.colorLine,
                thickness: 1,
                height: 15.h,
              ),
              Text('Ahmed',style: TextStyle(fontSize:18.sp, fontWeight: FontWeight.w600,),),
              Row(
                children: [
                  Icon(Icons.location_on, color: AppColors.colorIcon),
                  Text('Sonja Henies Plass 3,\nOslo 0185 Norway',style: TextStyle(fontSize:18.sp,color: AppColors.colorLine),),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.phone, color: AppColors.colorIcon),
                  Text('004722058000',style: TextStyle(fontSize:18.sp,color: AppColors.colorLine),),
                ],
              ),
              Divider(
                color: AppColors.colorLine,
                thickness: 1,
                height: 15.h,
              ),
              Text('Price Detail',style: TextStyle(fontSize:18.sp, fontWeight: FontWeight.w600,),),
              Container(
                height: 130.h,
                decoration: BoxDecoration(
                  color: AppColors.colorWhite,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Delivery Charge',style: TextStyle(fontSize: 18.sp),),
                          Text('220NOK',style: TextStyle(fontSize: 18.sp,color: AppColors.colorLine),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Tax',style: TextStyle(fontSize: 18.sp),),
                          Text('00.00NOK',style: TextStyle(fontSize:18.sp,color: AppColors.colorLine),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Promo Code',style: TextStyle(fontSize:18.sp),),
                          Text('00.0NOK',style: TextStyle(fontSize:18.sp,color: AppColors.colorLine),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total price',style: TextStyle(fontSize:18.sp),),
                          Text('220NOK',style: TextStyle(fontSize: 18.sp,color: AppColors.colorLine),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
