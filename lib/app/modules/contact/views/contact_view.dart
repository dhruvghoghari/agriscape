import 'package:agriscape/utils/apptheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/assets.dart';
import '../controllers/contact_controller.dart';

class ContactView extends GetView<ContactController> {
  const ContactView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0).w,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child:  Row(
                  children: [
                    IconButton(onPressed: (){
                      Get.back();
                    }, icon: Icon(Icons.arrow_back)),
                    SizedBox(width: 20.h),
                    Text(
                      'CONTACT US',
                      style: TextStyle(
                          fontFamily: 'Oswald',
                          fontSize: 24.sp
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 0.9,
                height: 20.0.h,
              ),
              SizedBox(height: 15.0.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 10.0,
                            ),]
                        ),
                        height: 150.h,
                        width: 150.w,
                        child: ClipOval(
                          child: Image.asset(icSplashLogo),
                        ),
                      ),
                      SizedBox(height: 40.0.h),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 10.0,
                            ),]
                        ),
                        height: 132.h,
                        width: 335.w,
                        child:Column(
                          children: [
                            SizedBox(height: 15.0.h),
                            Text(
                              '+91 1234567890',
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 24.sp
                              ),
                            ),
                            SizedBox(height: 15.0.h),
                            Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Image.asset(icContactcall,height: 40.h,),
                               Image.asset(icContactMsg,height: 40.h,),
                               Image.asset(icContactwhtsapp,height: 40.h),
                             ],
                           ),
                          ],
                        )
                      ),
                      SizedBox(height: 30.0.h),
                      Text("Power by ❤ Karon",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16.sp
                      ),),
                      SizedBox(height: 150.h,),
                      Text("Version 15.01.01",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16.sp
                        ),),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}