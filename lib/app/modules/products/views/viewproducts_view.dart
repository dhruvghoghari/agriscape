import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/assets.dart';
import '../../../../utils/strings.dart';
import '../../../../utils/widgets.dart';
import '../controllers/products_controller.dart';

class ViewProducts extends StatefulWidget {
  const ViewProducts({super.key});

  @override
  State<ViewProducts> createState() => _ViewProductsState();
}

class _ViewProductsState extends State<ViewProducts> {
  @override
  Widget build(BuildContext context) {
    ProductsController proController = Get.put(ProductsController());
    return Scaffold(
        body:SafeArea(
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
                            children: [
                              Text(
                                'HARVESTING',
                                style: TextStyle(fontFamily: 'Oswald', fontSize: 24.sp),
                              ),
                              Text(
                                'Per Hours RS600',
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
                              child: Image.asset(icProductsEdit)),
                          SizedBox(width: 10.h),
                          GestureDetector(
                              onTap: (){
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
                      controller: proController.searchController,
                      keyboardType: TextInputType.text,
                      hintText: productsTextfiled,
                      obscureText: false,
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search,size: 38,color: Colors.grey,),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(10).w,
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0).w,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Harvesting', style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14.sp
                                ),),
                                Text('RS200' ,style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Color(0xff2EBC84),
                                    fontSize: 14.sp
                                ),)
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Per Hours', style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14.sp
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Spacer(),
              Container(
                height: 70.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.topRight,
                      colors: <Color>[Color(0xff66CCFF), Color(0xff36F3AA)]),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0).w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'TOTAL REVENUE',
                        style: TextStyle(
                            fontFamily: 'Oswald',
                            fontSize: 16.sp,
                            color: Colors.white
                        ),
                      ),
                      Text(
                        'RS5000',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 24.sp,
                            color: Colors.white

                        ),
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