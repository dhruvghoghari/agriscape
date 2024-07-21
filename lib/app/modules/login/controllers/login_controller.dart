import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../api/api.dart';
import 'package:http/http.dart' as http;

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

  Future? userLogin({String? mobile}) async{
    try{
      var headers = {
        "Authorization":" bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2JvcmluZy1kYXZpbmNpLjIxNy0xNzQtMjQ1LTIzNS5wbGVzay5wYWdlL2FwaS9sb2dpbiIsImlhdCI6MTcxNzA0NDI5MiwiZXhwIjo2MTcxNzA0NDIzMiwibmJmIjoxNzE3MDQ0MjkyLCJqdGkiOiJ6ZW8yblY2TlBZeGdQcVNWIiwic3ViIjoiNSIsInBydiI6IjE3NjIyYjNkMmNkZDgyYmE5MTMyMDNiMGJiMDk5YmRhZjAyNGRmNmQifQ.hKhJG92wxDVFRKkD4tjQ34nj2C2TUvF6aKHlvOpIy5I"
      };
      var params = {
        "mobile_number":mobile
      };
      String username = 'AgroScape_hY26AEqb27';
      String password = 'S47djXv4ru:QNlqh£<)G';
      String basicAuth = 'Basic ' + base64.encode(utf8.encode('$username:$password'));

      Uri url = Uri.parse('https://boring-davinci.217-174-245-235.plesk.page/api/login');
      var response = await http.post(url, headers: <String, String>{'authorization': basicAuth},body: jsonEncode(params));
      if(response.statusCode == 200){
        log(response.statusCode.toString());
        var json = jsonDecode(response.body);
        print("User Login Response "+json.toString());
      }
    }
    catch(ex){
      ex.toString();
    }
  }

  //add comment by Dhruv
}