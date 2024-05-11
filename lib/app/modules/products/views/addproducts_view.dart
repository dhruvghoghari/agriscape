import 'package:agriscape/app/modules/products/controllers/products_controller.dart';
import 'package:agriscape/app/modules/products/views/viewproducts_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/apptheme.dart';
import '../../../../utils/strings.dart';
import '../../../../utils/widgets.dart';

class AddProductsView extends StatefulWidget {
  const AddProductsView({super.key});

  @override
  State<AddProductsView> createState() => _AddProductsViewState();
}
class _AddProductsViewState extends State<AddProductsView> {
  @override
  Widget build(BuildContext context) {
    ProductsController proController = Get.put(ProductsController());
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0).w,
          child: Column(
            children: [
              Row(
              children: [
                  IconButton(onPressed: (){
                    Get.back();
                  }, icon: Icon(Icons.arrow_back_outlined)),
                  SizedBox(width: 15.h),
                  Text(
                    'ADD PRODUCTS',
                    style: TextStyle(fontFamily: 'Oswald', fontSize: 24.sp),
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                    thickness: 0.9,
                    height: 20.0.h,
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Form(
                        child: Column(
                          children: [
                            AppTheme.customTitle(text: "Name"),
                            SizedBox(height: 8.h),
                            CustomTextFormField(
                              controller: proController.nameController,
                              keyboardType: TextInputType.text,
                              hintText:signupTextfiled,
                              obscureText: false,
                            ),
                            SizedBox(height: 20.h),
                            AppTheme.customTitle(text: "Unit"),
                            SizedBox(height: 8.h),
                            CustomTextFormField(
                              controller: proController.unitController,
                              keyboardType: TextInputType.number,
                              hintText:settingPasswordTextfiled,
                              obscureText: false,
                              suffixIcon: IconButton(
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(height: 20.h),
                            AppTheme.customTitle(text: "Amount"),
                            SizedBox(height: 8.h),
                            CustomTextFormField(
                              controller: proController.amountController,
                              keyboardType: TextInputType.number,
                              hintText:productsAmonutTextfiled,
                              obscureText: false,
                            ),
                            SizedBox(height: 180.h),
                            Button(btnText: "ADD",
                                onClick: (){
                              Get.to(() => ViewProducts());
                                })
                          ],
                        ),
                      )
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
