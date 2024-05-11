import 'package:agriscape/utils/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/assets.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/widgets.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: myDrawer(),
      key: controller.scaffoldKey,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18.0).w,
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 48.h,
                        width: 48.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff66CCFF),
                        ),
                        child:Builder(
                          builder: (context) =>  GestureDetector(
                              onTap: (){
                                Scaffold.of(context).openDrawer();
                              },
                              child: Image.asset(icDrawerLogo)),
                        )
                      ),
                      Image.asset(icSplashLogo,height: 70.h),
                      Container(
                        height: 48.h,
                        width: 48.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: homeColor,
                        ),
                        child: Image.asset(icHomeNotification),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 20.h),
                        Row(
                         children: [
                           Text(
                             'QUICK ACCESS',
                             style: TextStyle(
                               fontFamily: 'Oswald',
                               fontSize: 24.sp
                             ),
                           ),
                         ],
                       ),
                        SizedBox(height: 15.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppTheme.customContainer(text: 'Create order',img: icHomeOrder),
                            AppTheme.customContainer(text: 'Add Customer',img: icHomeCustomer),
                            AppTheme.customContainer(text: 'Add Vehicle',img: icHomeVehicle),

                          ],
                        ),
                        SizedBox(height: 18.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppTheme.customContainer(text: 'Add Operator',img: icHomeOperator),
                            AppTheme.customContainer(text: 'Contact Us',img: icHomeContactsUs),
                            AppTheme.customContainer(text: 'Reports',img: icHomeReport),
                          ],
                        ),
                        SizedBox(height: 18.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'RECENT ORDERS',
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 24.sp
                              ),
                            ),
                            Text(
                              'See More',
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 16.sp,
                                color: Color(0xff66CCFF)
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.h),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(0.8).w,
                              boxShadow: [new BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 20.0,
                              ),]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0).w,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('KYAM001', style: TextStyle(
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
                                  children: [
                                    Text('Keyur Patel', style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14.sp
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 5.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Harvesting', style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14.sp
                                    ),),
                                    Text('13-03-2024' ,style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14.sp
                                    ),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(0.8).w,
                              boxShadow: [ BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 20.0,
                              ),]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0).w,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('KYAM001', style: TextStyle(
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
                                  children: [
                                    Text('Keyur Patel', style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14.sp
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 5.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Harvesting', style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14.sp
                                    ),),
                                    Text('13-03-2024' ,style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14.sp
                                    ),)
                                  ],
                                ),
                                // Icon(CupertinoIcons.decrease_indent)
                              ],
                            ),
                          ),
                        )
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