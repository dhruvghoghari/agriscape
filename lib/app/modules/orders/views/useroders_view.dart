import 'package:agriscape/utils/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/assets.dart';
import '../../../../utils/colors.dart';
import 'createorders_view.dart';

class UserOrders extends StatefulWidget {
  const UserOrders({super.key});

  @override
  State<UserOrders> createState() => _UserOrdersState();
}

class _UserOrdersState extends State<UserOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0).w,
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(Icons.arrow_back)),
                    SizedBox(width: 15.w),
                    Column(
                      children: [
                        Text(
                          'KY001',
                          style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 24.sp,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          '20-02-2023',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14.sp
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                        onTap: (){
                          Get.to(() => CreateOrder());
                        },
                        child: Image.asset(icOredrsEdit)),
                    SizedBox(width: 10.h),
                    GestureDetector(
                        onTap: (){},
                        child: Image.asset(icOrdersDelete)),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 0.9,
                height: 20.0.h,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 15.h),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10.0).w
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0).w,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Product" ,
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14.sp,
                                        color: Color(0xff333333)
                                    ),),
                                  Text("HARVESTING" ,
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14.sp,
                                        color: Color(0xff333333)
                                    ),),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("BY" ,
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14.sp,
                                        color: Color(0xff333333)
                                    ),),
                                  Text("Pramod" ,
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14.sp,
                                        color: Color(0xff333333)
                                    ),),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Using" ,
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14.sp,
                                        color: Color(0xff333333)
                                    ),),
                                  Text("Tractor 1" ,
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14.sp,
                                        color: Color(0xff333333)
                                    ),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10.0).w
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0).w,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15,left: 15).r,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'RS 500',
                                          style: TextStyle(
                                              fontFamily: 'Oswald',
                                              fontSize: 16.sp,
                                              color: TextColor,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text("Pending",
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 16.sp,
                                                  color: TextColor
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(height: 3.h,),
                                        Text(
                                          'RS 1000',
                                          style: TextStyle(
                                              fontFamily: 'Oswald',
                                              fontSize: 18.sp,
                                              color: TextColor,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text("Collected",
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 16.sp,
                                                  color: TextColor
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'RS 1500',
                                          style: TextStyle(
                                              fontFamily: 'Oswald',
                                              fontSize: 18.sp,
                                              color: TextColor,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Total',
                                              style: TextStyle(
                                                fontFamily: 'Roboto',
                                                fontSize: 16.sp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                      ),
                      SizedBox(height: 15.h),
                      Container(
                        height: 48.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color(0xff66CCFF),
                            borderRadius: BorderRadius.circular(10).w
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0).w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Payment",
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14.sp,
                                    color: Color(0xffFFFFFF)
                                ),),
                              Text("Add",
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 16.sp,
                                    color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.bold
                                ),),
                            ],
                          ),
                        ),
                        ),
                      SizedBox(height: 15.h),
                      Container(
                        height: 100.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(10).w
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0).w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("20-02-2023",
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14.sp,
                                    ),),
                                  Text("RS 1500",
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppTheme.ordersContainer(
                            text: 'Phone Call',
                              img: ordersCall,
                              color: Color(0xff66CCFF)
                          ),
                          AppTheme.ordersContainer(
                              text: 'Whatsapp',
                              img: icOrdersWhatsapp,
                              color: Color(0xff7ED7C1)
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppTheme.ordersContainer(
                              text: 'Bill Copy',
                              img: icOredrsBill,
                              color: Color(0xffF9B572)
                          ),
                          AppTheme.ordersContainer(
                              text: 'Reminder',
                              img: icOrdersReminder,
                              color: Color(0xffBEADFA)
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}