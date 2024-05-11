import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/assets.dart';
import '../controllers/update_controller.dart';

class UserUpdateView extends GetView<UpdateController> {
  const UserUpdateView({super.key});

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
                      Spacer(),
                      Image.asset(icUpdateDownload),
                      SizedBox(width: 15.h),
                      Image.asset(icUpdateshare)

                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey.shade300,
                  thickness: 0.9,
                  height: 20.0.h,
                ),
              ],
            ),
          ),
        ));
  }
}