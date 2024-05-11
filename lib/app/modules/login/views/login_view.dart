import 'package:agriscape/api/api.dart';
import 'package:agriscape/app/routes/app_pages.dart';
import 'package:agriscape/utils/apptheme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/assets.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/strings.dart';
import '../../../../utils/widgets.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0).w,
            child: Column(
              children: [
                Center(child: Image.asset(icLoginImg)),
                Row(
                  children: [
                    Text('WELCOME TO ',style: TextStyle(
                        fontFamily: 'Oswald',
                        fontSize: 32.sp,
                        color: Colors.black
                    ),),
                    Text('AGRISCAPE' ,style: TextStyle(
                        fontFamily: 'Oswald',
                        fontSize: 32.sp,
                        color: Color(0xff66CCFF)
                    ),),
                  ],
                ),
                SizedBox(height: 8.h,),
                Text(introBody,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16.sp,
                      color: TextColor
                  ),),
                SizedBox(height: 18.h,),
                Form(
                  key: controller.loginKey,
                  child: Column(
                    children: [
                      AppTheme.customTitle(text: "Mobile Number"),
                      SizedBox(height: 8.h),
                      CustomTextFormField(
                        controller: controller.mobileController,
                        keyboardType: TextInputType.number,
                        hintText:loginTextfiled,
                        obscureText: false,
                        validator: controller.mobileValidation,
                        maxLength: 10,
                      ),
                      SizedBox(height: 5.h),
                      RichText(
                        text: TextSpan(
                          text: authNotAccount,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.sp,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: authSignUp,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                fontFamily: "Oswald"
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.toNamed(Routes.SIGNUP);
                                },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Button(btnText: "Get Otp",
                          onClick: (){
                            // controller.api.userLogin(
                            //     mobile_number: controller.mobileController.text)!.then((value) async{
                            //   if(controller.isLogin == true)
                            //   {
                            //     AppTheme.getSnackBar(message: value['msg']);
                            //     Get.toNamed(Routes.OTP);
                            //   }
                            //   else
                            //   {
                            //     AppTheme.getSnackBar(message: value['msg']);
                            //   }
                            // });
                          })
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}