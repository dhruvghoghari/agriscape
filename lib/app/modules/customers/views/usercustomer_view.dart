import 'package:agriscape/app/modules/customers/controllers/customers_controller.dart';
import 'package:agriscape/utils/apptheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/assets.dart';
import '../../../../utils/strings.dart';
import '../../../../utils/widgets.dart';

class UserCustomerView extends StatefulWidget {
  const UserCustomerView({super.key});

  @override
  State<UserCustomerView> createState() => _UserCustomerViewState();
}

class _UserCustomerViewState extends State<UserCustomerView> {
  @override
  Widget build(BuildContext context) {
    CustomersController customersController = Get.put(CustomersController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18,right: 18,top: 15).r,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'KEYUR PATEL',
                              style: TextStyle(fontFamily: 'Oswald', fontSize: 24.sp),
                            ),
                            Text(
                              'Lorem Ipsum is simply',
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
                            },
                            child: Image.asset(icCustomerAdd)),
                        SizedBox(width: 10.h),
                        GestureDetector(
                            onTap: (){
                            },
                            child: Image.asset(icProductsEdit)),
                        SizedBox(width: 10.h),
                        GestureDetector(
                            onTap: (){
                              Get.defaultDialog(
                                  content: Padding(
                                    padding: const EdgeInsets.all(8.0).w,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Are You Sure ?',
                                              style: TextStyle(
                                                  fontFamily: 'Oswald',
                                                  fontSize: 16.sp
                                              ),
                                            ),
                                            IconButton(onPressed: (){
                                              Get.back();
                                            }, icon: Icon(Icons.close))
                                          ],
                                        ),
                                        Divider(
                                          color: Colors.grey.shade300,
                                          thickness: 0.9,
                                          height: 10.0.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Do you really want to delete these records? ',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 12.sp,
                                                color: Color(0xff333333)
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'This Process cannot be undone.',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                fontSize: 12.sp,
                                                  color: Color(0xff333333)
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10.0.h),
                                        Row(
                                          children: [
                                            Text(
                                              'Note :',
                                              style: TextStyle(
                                                  //fontFamily: 'Roboto',
                                                  fontSize: 14.sp,
                                                  color: Color(0xff333333),
                                                fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            Text(
                                              'Do you really want to delete these.',
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 14.sp,
                                                  color: Color(0xff333333),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20.h),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            yesDialogButton(() {

                                            }, 'Yes'),
                                            noDialogButton(() {

                                            }, 'No'),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                              );
                            },
                            child: Image.asset(icProductsDelete)),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                    thickness: 0.9,
                    height: 20.0.h,
                  ),
                  CustomTextFormField(
                    controller: customersController.searchController,
                    keyboardType: TextInputType.text,
                    hintText: productsTextfiled,
                    obscureText: false,
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search,size: 38,color: Colors.grey,),
                      onPressed: () {},
                    ),
                  ),
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
      ),
    );
  }
}