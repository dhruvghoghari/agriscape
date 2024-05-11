import 'package:agriscape/utils/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/strings.dart';
import '../../../../utils/widgets.dart';
import '../controllers/signup_controller.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final SignupController controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18.0).w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  register,
                  style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 32.sp
                  ),
                ),
                SizedBox(height: 10.0.h),
                Text(introBody,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16.sp,
                      color: TextColor
                  ),),
                SizedBox(height: 15.0.h),
                AppTheme.customTitle(text: "Name"),
                CustomTextFormField(
                  controller: controller.nameController,
                  keyboardType: TextInputType.text,
                  hintText: signupTextfiled,
                  obscureText: false,
                ),
                SizedBox(height: 15.0.h),
                AppTheme.customTitle(text: "Company"),
                CustomTextFormField(
                  controller: controller.companyController,
                  keyboardType: TextInputType.text,
                  hintText: companyTextfiled,
                  obscureText: false,
                ),
                SizedBox(height: 15.0.h),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: AppTheme.customTitle(text: "State"),
                        ),
                        SizedBox(width: 15.0.w),
                        Expanded(
                          child: AppTheme.customTitle(text: "City"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: MyDropdownButton(),
                        ),
                        SizedBox(width: 15.0.w),
                        Expanded(
                          child: MyDropdownButton(),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0.h),
                    Row(
                      children: [
                        Expanded(
                          child: AppTheme.customTitle(text: "Taluka"),
                        ),
                        SizedBox(width: 10.0.w),
                        Expanded(
                          child: AppTheme.customTitle(text: "Village"),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: MyDropdownButton(),
                        ),
                        SizedBox(width: 10.0.w),
                        Expanded(
                          child: MyDropdownButton(),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15.0.h),
                Row(
                  children: [
                    Obx(() => Checkbox(
                      value: controller.valueFirst.value,
                      activeColor: Colors.blue,
                      onChanged: (value) {
                        controller.valueFirst.value = value!;
                      },
                    )),
                    Expanded(
                      child: Text(
                        checkboxText,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16.sp,
                            color: TextColor
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                Button(
                    btnText: submit,
                    onClick: (){

                    }
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}