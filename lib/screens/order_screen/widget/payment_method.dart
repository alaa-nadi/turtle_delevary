
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/colors/app_colors.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(height:75.h ,width:372.w,
      decoration:BoxDecoration(color: AppColors.colorWhisper,
          borderRadius: BorderRadius.circular(15.r)),
      child: Column(children: [
        Row(children: [
          Text('Order ID -2770',style: TextStyle(fontSize: 17.sp,color: AppColors.colorBlack, fontWeight: FontWeight.w400,)),
          Spacer(),
          Padding(
            padding: EdgeInsetsDirectional.all(5.r),
            child: Container(height:30.h ,width: 100.w,
              decoration:BoxDecoration(color: AppColors.colorMusterApp,
                  borderRadius: BorderRadius.circular(7.r)),
              child: Center(child: Text('Delivered',style: TextStyle(color: AppColors.colorWhite),)),),
          )],),
        Row(children: [Text('Payment Method - Wallet',style: TextStyle(fontSize: 17.sp,color: AppColors.colorBlack, fontWeight: FontWeight.w400,)),Spacer()
          ,Text(' 28NOV2024',style: TextStyle(color: AppColors.colorBackItem,fontSize: 16.sp),)],)
      ],),);
  }
}
