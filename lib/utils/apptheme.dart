import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'colors.dart';

class AppTheme {
  static customTitle({String? text}) {
    return Row(
      children: [
        Text(text!, style: TextStyle(
          fontSize: 16.sp,
          fontFamily: 'Roboto'
        ),),
      ],
    );
  }

  static getSnackBar({String? message}) {
    Get.showSnackbar(GetSnackBar(
      message: message,
      duration: const Duration(seconds: 2),
      snackPosition: SnackPosition.BOTTOM,
      borderRadius: 45.0.r,
    ));
  }

  static customTextStyle({String? font,double? size,Color? color})
  {
    return TextStyle(
        fontFamily: font,
        fontSize: size,
        color: TextColor,
        fontWeight: FontWeight.bold
    );
  }


  static Widget customContainer({required String text, required String img}) {
    return Container(
      height: 104.h,
      width: 101.w,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: homeColor,
            ),
            child: Image.asset(img),
          ),
          Text(
            text,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 15.sp,
            ),
          ),
        ],
      ),
    );
  }

  static customContainers({required String img, required Color color}) {
    return Container(
      height: 48.h,
      width: 48.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Builder(
        builder: (context) =>
            GestureDetector(
                onTap: () {},
                child: Image.asset(img, color: Colors.white,)
            ),
      ),
    );
  }

  /* UserOrders Screen */
  static ordersContainer({required String img,required Color color,required String text})
  {
    return Container(
      height: 50.h,
      width: 160.w,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50.0).w
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10,top: 5,bottom: 5).r,
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20.0)
            ),
            child: Image.asset(img),
          ),
          SizedBox(width: 7.w,),
          Center(
            child: Text(text,
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14.sp,
                  color: Color(0xffFFFFFF),
                  fontWeight: FontWeight.bold
              ),),
          )
        ],
      ),
    );
  }
}