import 'package:agriscape/app/modules/login/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/assets.dart';
import '../../../../utils/strings.dart';
import '../../../../utils/widgets.dart';
import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SettingsController settingsController = Get.put(SettingsController());
    return Scaffold(
      body:SafeArea(
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
                      'SETTINGS',
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
                            boxShadow: [ BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 20.0,
                            ),]
                        ),
                        height: 150.h,
                        width: 150.w,
                        child: ClipOval(
                          child: Image.asset(icSplashLogo),
                        ),
                      ),
                      SizedBox(height: 15.0.h),
                      RichText(
                        maxLines: 1,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'WELCOME TO ',
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 32.sp,
                                color: Colors.black
                              ),
                            ),
                            TextSpan(
                              text: 'AGRISCAPE',
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: 32.sp,
                                color: Color(0xff66CCFF)
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text('365 Day to Left',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(height: 15.0.h),
                      CustomTextFormField(
                        controller: settingsController.passwordController,
                        keyboardType: TextInputType.number,
                        hintText:settingPasswordTextfiled,
                        obscureText: false,
                        suffixIcon: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: 15.0.h),
                      CustomTextFormField(
                        controller: settingsController.passwordController,
                        keyboardType: TextInputType.number,
                        hintText:settingProfile,
                        obscureText: false,
                        suffixIcon: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {

                          },
                        ),
                      ),
                      SizedBox(height: 85.h),
                      Button(btnText: "LOGOUT",
                          onClick: (){

                      })
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
