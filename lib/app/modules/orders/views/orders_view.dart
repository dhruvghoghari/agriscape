import 'package:agriscape/app/modules/orders/views/useroders_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/assets.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/strings.dart';
import '../../../../utils/widgets.dart';
import '../controllers/orders_controller.dart';

class OrdersView extends GetView<OrdersController> {
  const OrdersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    OrdersController ordersCon = Get.put(OrdersController());
    return Scaffold(
        body:SafeArea(
          child: Column(
            children: [
              Padding(
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
                          SizedBox(width: 15.h),
                          Column(
                            children: [
                              Text(
                                'ORDERS',
                                style: TextStyle(
                                    fontFamily: 'Oswald',
                                    fontSize: 24.sp
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          GestureDetector(
                              onTap: (){
                              },
                              child: Image.asset(icOrdersFilter)),
                          SizedBox(width: 10.h),
                          GestureDetector(
                              onTap: (){
                              },
                              child: Image.asset(icOrdersDelete)),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                      thickness: 0.9,
                      height: 20.0.h,
                    ),
                    CustomTextFormField(
                      controller: ordersCon.searchController,
                      keyboardType: TextInputType.text,
                      hintText: productsTextfiled,
                      obscureText: false,
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search,size: 38,color: Colors.grey,),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 10.0.h),
                    GestureDetector(
                      onTap: (){
                        Get.to(() => UserOrders());
                      },
                      child: Container(
                        height: 250.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(10.0).w
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 48.h,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Color(0xff66CCFF),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)
                                ).w
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(13.0).w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("KY001",
                                      style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14.sp,
                                        color: Color(0xffFFFFFF)
                                ),),
                                    Text("20-02-2023",
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 14.sp,
                                          color: Color(0xffFFFFFF)
                                      ),),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0).w,
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
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Unit" ,
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 14.sp,
                                            color: Color(0xff333333)
                                        ),),
                                      Text("1 Hour" ,
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
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10,top:1),
                              child: Divider(
                                color: Colors.grey.shade300,
                                thickness: 0.9,
                                height: 20.0.h,
                              ),
                            ),
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
                    )
                  ],
                ),
              ),
              Spacer(),
              Container(
                height: 92.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffF0FAFF),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0).w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            'RS 500',
                            style: TextStyle(
                                fontFamily: 'Oswald',
                                fontSize: 20.sp,
                                color: Color(0xffFA7070)
                            ),
                          ),
                          Row(
                            children: [
                              Text("Pending",
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 16.sp,
                                    color: Color(0xff111111)
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
                                fontFamily: 'Roboto',
                                fontSize: 18.sp,
                                color: Color(0xff111111),
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Row(
                            children: [
                              Text("Collected",
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16.sp,
                                  color: Color(0xff111111),
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
                                color: Color(0xff29A71A)
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
                ),
              )
            ],
          ),
        )
    );
  }
}