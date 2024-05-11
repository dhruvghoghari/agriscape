import 'package:agriscape/api/api.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {

  TextEditingController otpController = TextEditingController();
  RxBool isLogin = false.obs;
  Api api = Api();
}
