import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../shared/colors/app_colors.dart';
import '../../order_screen/order_screen.dart';

class ItemOrder extends StatelessWidget {
   ItemOrder({super.key,this.color});
   final Color? color;
   @override
  Widget build(BuildContext context) {
    return GestureDetector(
onTap: (){
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => Order_Details_Screen()),
  );
},
      child: Container(
        decoration: BoxDecoration(color:AppColors.colorWhite,
            borderRadius: BorderRadius.circular(19.w)),
        height: 135.h,
        width: 386.w,
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 10.w, end: 10.w),
          child: Column(
            children: [
              Row(children: [
                Text('Order ID 2332',style: TextStyle(fontSize: 17.sp,color: AppColors.colorBlack, fontWeight: FontWeight.w500,),),
                Spacer(),
                Container(
                  decoration: BoxDecoration(color:  color ?? AppColors.colorMusterApp,
                    borderRadius: BorderRadius.circular(5.w)),
                  height: 30.h,
                  width: 100.w,
                  child: Center(child: Text('Delivered',style: TextStyle(color: AppColors.colorWhite),)),)
              ],),
              Divider(
                color: AppColors.colorLine,
                thickness: 1,
                height: 15.h,
              ),
              SizedBox(height: 10,),
              Row(children: [Icon(Icons.person_rounded),Text('Ahmed Mohammed',style: TextStyle(fontSize: 16.sp,color: AppColors.colorBackItem),)],),
              SizedBox(height: 10,),
              Row(children: [SvgPicture.asset('assets/images/millm.svg'),SizedBox(width: 5.w,),
                Text('Payable : 122 NOK',style: TextStyle(fontSize: 16.sp,color: AppColors.colorBackItem),),
                Spacer(),
                Text('26NOV2024',style: TextStyle(fontSize: 16.sp,color: AppColors.colorBackItem),)],),
            ],
          ),
        ),
      ),
    );
  }
}
