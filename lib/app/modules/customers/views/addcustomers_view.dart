import 'package:agriscape/app/modules/customers/controllers/customers_controller.dart';
import 'package:agriscape/app/modules/customers/views/usercustomer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/apptheme.dart';
import '../../../../utils/strings.dart';
import '../../../../utils/widgets.dart';

class AddCustomerView extends StatefulWidget {
  const AddCustomerView({super.key});

  @override
  State<AddCustomerView> createState() => _AddCustomerViewState();
}

class _AddCustomerViewState extends State<AddCustomerView> {
  @override
  Widget build(BuildContext context) {
    CustomersController customersController = Get.put(CustomersController());
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
                  SizedBox(width: 15.h),
                  Text(
                    'ADD CUSTOMERS',
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 15.0.h),
                      AppTheme.customTitle(text: "Name"),
                      CustomTextFormField(
                        controller: customersController.nameController,
                        keyboardType: TextInputType.text,
                        hintText: signupTextfiled,
                        obscureText: false,
                      ),
                      SizedBox(height: 15.0.h),
                      AppTheme.customTitle(text: "Mobile Number"),
                      CustomTextFormField(
                        controller: customersController.mobileController,
                        keyboardType: TextInputType.number,
                        hintText: loginTextfiled,
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
                      SizedBox(height: 80.h),
                      Button(btnText: 'ADD', onClick: (){
                        Get.to(() => UserCustomerView());
                      })
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}