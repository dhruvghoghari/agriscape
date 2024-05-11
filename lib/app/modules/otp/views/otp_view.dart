import 'package:agriscape/app/modules/login/controllers/login_controller.dart';
import 'package:agriscape/utils/apptheme.dart';
import 'package:agriscape/utils/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/widgets.dart';
import '../../../routes/app_pages.dart';
import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    OtpController otpCon = Get.put(OtpController());
    LoginController loginCon = Get.put(LoginController());
    return Scaffold(
      body:SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18.0).w,
            child: Column(
              children: [
                SizedBox(height: 15.h),
                Text(otpTitle,
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 32.sp,
                  ),),
                SizedBox(height: 15.h),
                Text(otpBody,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Roboto',
                      color:TextColor
                  ),),
                SizedBox(height: 15.h),
                Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextFormField(
                          controller: otpCon.otpController,
                          keyboardType: TextInputType.number,
                          hintText: otpTextfiled,
                          obscureText: false,
                          validator: loginCon.otpValidation,
                          maxLength: 6,
                        ),
                        SizedBox(height: 12.h),
                        Padding(
                          padding: const EdgeInsets.only(left: 25).w,
                          child: Text(otpTime,
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14.sp,
                                color:TextColor
                            ),),
                        ),
                        SizedBox(height: 290.h),
                        Button(btnText: submit,
                            onClick: (){
                          controller.api.verifyOtp(
                            otp: controller.otpController.text,
                          )!.then((value) {
                            if(controller.isLogin == true)
                              {
                                AppTheme.getSnackBar(message: value['msg']);
                              }
                            else
                              {
                                AppTheme.getSnackBar(message: value['msg']);
                              }
                          });
                            })
                      ],
                    ))
              ],
            ),
          ),
        ),
      )
    );
  }
}
