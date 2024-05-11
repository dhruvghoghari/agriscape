import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../utils/assets.dart';
import '../../../../utils/strings.dart';
import '../../../../utils/widgets.dart';
import '../controllers/products_controller.dart';
import 'addproducts_view.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  _ProductsViewState createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  ProductsController productsController = Get.put(ProductsController());


  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(18.0).w,
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
                      'PRODUCTS',
                      style: TextStyle(fontFamily: 'Oswald', fontSize: 24.sp),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => AddProductsView());
                      },
                      child: Image.asset(icProductAdd),
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 0.9,
                height: 20.0.h,
              ),
              CustomTextFormField(
                controller: productsController.searchController,
                keyboardType: TextInputType.text,
                hintText: productsTextfiled,
                obscureText: false,
                suffixIcon: IconButton(
                  icon: Icon(Icons.search, size: 38, color: Colors.grey),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 15.h),
              Expanded(
                child: ListView.builder(
                    itemCount:productsController.data[0].products!.length,
                  itemBuilder: (BuildContext context, int index){
                  return Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(10).w,
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child:Padding(
                        padding: EdgeInsets.all(15.0).w,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(productsController.data[0].products![index].title.toString()
                                  ,style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                  );
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}