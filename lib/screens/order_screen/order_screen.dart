import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turtle_delevary/screens/order_screen/widget/delivery.dart';
import 'package:turtle_delevary/screens/order_screen/widget/payment_method.dart';
import 'package:turtle_delevary/screens/order_screen/widget/product_type.dart';

import '../../shared/colors/app_colors.dart';

class Order_Details_Screen extends StatelessWidget {
  const Order_Details_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: AppColors.colorMusterApp,
      appBar: AppBar(backgroundColor: AppColors.colorMusterApp,
      title: Center(child: Text('Order Deatails',style: TextStyle(color: AppColors.colorWhite),)),
      leading: Container(
        margin: EdgeInsets.all(7.0.w),
        decoration: BoxDecoration(
          color: AppColors.colorBorderI,
          shape: BoxShape.circle,
          boxShadow: [],
        ),
        child: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.colorBlack),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    ),
body: Container(
  decoration: BoxDecoration(color: AppColors.colorWhite,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(35.r),topRight:Radius.circular(35.r) )),
  child: Padding(
    padding: EdgeInsetsDirectional.only(start: 30.w, end: 30.w),
    child: Column(
    children: [
      SizedBox(height: 30.h,),
      PaymentMethod(),
      SizedBox(height: 40.h,),
      ProductType(),
      SizedBox(height: 25.h,),
      Delivery()
    ])),)
    );
  }
}
