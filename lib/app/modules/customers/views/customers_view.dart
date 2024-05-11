import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/assets.dart';
import '../../../../utils/strings.dart';
import '../../../../utils/widgets.dart';
import '../controllers/customers_controller.dart';
import 'addcustomers_view.dart';

class CustomersView extends GetView<CustomersController> {
  const CustomersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    CustomersController customersController = Get.put(CustomersController());
    return Scaffold(
      body:SafeArea(
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
                    'CUSTOMERS',
                    style: TextStyle(
                        fontFamily: 'Oswald',
                        fontSize: 24.sp
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                      onTap: (){
                        Get.to(() => AddCustomerView());
                      },
                      child: Image.asset(icProductAdd))
                ],
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 0.9,
                height: 20.0.h,
              ),
              Expanded(
                child: Column(
                  children: [
                    CustomTextFormField(
                      controller: customersController.searchController,
                      keyboardType: TextInputType.text,
                      hintText: productsTextfiled,
                      obscureText: false,
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search,size: 38,color: Colors.grey,),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                        decoration: BoxDecoration(
                            color: Color(0xffF0FAFF),
                          border: Border.all(color: Colors.grey.shade300)
                        ),
                        width: 335.w,
                        child:Padding(
                          padding: const EdgeInsets.all(15.0).w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15.0.h),
                              Text(
                                'Keyur Patel',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 16.sp,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Lorem Ipsum is simply dummy text of the',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14.sp
                                ),
                              ),
                              Divider(
                                color: Colors.grey.shade300,
                                thickness: 0.9,
                                height: 20.0.h,
                              ),
                              SizedBox(height: 5.0.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(icContactcall,height: 40.h,),
                                  Image.asset(icContactMsg,height: 40.h,),
                                  Image.asset(icContactwhtsapp,height: 40.h),
                                  Image.asset(icCustomerInfo,height: 40.h),
                                ],
                              ),
                            ],
                          ),
                        )
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
