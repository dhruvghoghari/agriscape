import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../api/api.dart';

class LoginController extends GetxController {

  TextEditingController mobileController = TextEditingController();
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  Api api = Api();
  RxBool isLogin = false.obs;


  String? mobileValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a 10-digit number';
    }
    else {
      RegExp mobileRegex = RegExp(r'^[0-9]{10}$');
      if (!mobileRegex.hasMatch(value)) {
        return 'Please enter a valid 10-digit number';
      }
    }
    return null;
  }

  String? otpValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a 4-digit otp';
    }
    else {
      RegExp mobileRegex = RegExp(r'^[0-9]{10}$');
      if (!mobileRegex.hasMatch(value)) {
        return 'Please enter a valid 4-digit number';
      }
    }
    return null;
  }

}
