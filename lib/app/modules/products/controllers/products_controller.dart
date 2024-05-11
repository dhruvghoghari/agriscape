import 'package:agriscape/api/api.dart';
import 'package:agriscape/models/productmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../models/getallproducts.dart';

class ProductsController extends GetxController {

  TextEditingController searchController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController unitController = TextEditingController();
  TextEditingController amountController = TextEditingController();

//  ProductModel userModel = ProductModel();
  GetAllProductsModel getProductModel = GetAllProductsModel();

  Api api = Api();

  var data = <GetAllProductsModel>[].obs;

  get() async
  {
    data.value = await api.getAllProducts();
  }

  @override
  void onInit() async{
    super.onInit();
    get();
  }

}
