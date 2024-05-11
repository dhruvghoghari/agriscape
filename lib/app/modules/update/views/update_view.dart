import 'package:agriscape/app/modules/update/views/userupdate_view.dart';
import 'package:agriscape/app/routes/app_pages.dart';
import 'package:agriscape/utils/assets.dart';
import 'package:agriscape/utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/strings.dart';
import '../controllers/update_controller.dart';

class UpdateView extends GetView<UpdateController> {
  const UpdateView({Key? key}) : super(key: key);

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
                  SizedBox(width: 20.h),
                  Text(
                    'UPDATE',
                    style: TextStyle(fontFamily: 'Oswald', fontSize: 24.sp),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('NEW UPDATE AVAILABLE',
                    style: TextStyle(
                        fontFamily: 'Oswald',
                        fontSize: 32.sp
                    ),
                  ),
                  SizedBox(height: 10.sp),
                  Text(introBody,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16.sp,
                        color: TextColor
                    ),),
                  SizedBox(height: 15.sp),
                  Row(
                    children: [
                      Image.asset(icbackArrow),
                      SizedBox(width: 15.sp),
                      Text("Get paid faster by offering",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16.sp,
                            color: TextColor
                        ),),
                  ],),
                  SizedBox(height: 15.sp),
                  Row(
                    children: [
                      Image.asset(icbackArrow),
                      SizedBox(width: 15.sp),
                      Text("Provide a great customer experience",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16.sp,
                            color: TextColor
                        ),),
                    ],),
                  SizedBox(height: 15.sp),
                  Row(
                    children: [
                      Image.asset(icbackArrow),
                      SizedBox(width: 15.sp),
                      Text("Reduce bad debt across",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16.sp,
                            color: TextColor
                        ),),
                    ],),
                  SizedBox(height: 250.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customButton(() {

                      }, 'Exit'),
                      customButton(() {
                        Get.to(() => UserUpdateView());
                      }, 'Update'),

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}