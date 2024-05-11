import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/privacypolicy_controller.dart';

class PrivacyPolicyView extends GetView<PrivacypolicyController> {
  const PrivacyPolicyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0).w,
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                    Get.back();
                  }, icon: Icon(Icons.arrow_back)),
                  SizedBox(width: 20.h),
                  Text(
                    'PRIVACY POLICY',
                    style: TextStyle(
                        fontFamily: 'Oswald',
                        fontSize: 24.sp
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 0.9,
                height: 20.0.h,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:5.h),
                    const Text("A mobile app privacy policy informs people about your "
                        "data collection practices and discloses how your app gathers,"
                        " stores, and uses personal information.",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                      ),),
                    SizedBox(height:15.h),
                     Text("1.Data Collcetion",
                      style: TextStyle(
                          fontFamily: 'Oswald',
                          fontSize: 24.sp
                      ),),
                     Text("Data collection is the process of gathering and"
                        " measuring information on variables of interest",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                      ),),
                    SizedBox(height:15.h),
                    Text("2.Data Usage",
                      style: TextStyle(
                          fontFamily: 'Oswald',
                          fontSize: 24.sp
                      ),),
                     Text("Open your phone's Settings app. Internet. Next to your carrier, tap Settings ."
                        " At the top you'll see how much total data you use.",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                      ),),
                    SizedBox(height:15.h),
                     Text("3.Data Sharing",
                      style: TextStyle(
                          fontFamily: 'Oswald',
                          fontSize: 24.sp
                      ),),
                     Text("Data sharing is the process of making the same data resources available to"
                        " multiple applications, users, or organizations.",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                      ),),
                  ],
                ),
              )
            ]

          ),
        ),
      )
    );
  }
}
