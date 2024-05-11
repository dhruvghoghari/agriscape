import 'dart:async';
import 'dart:convert';
import 'package:agriscape/api/widgets.dart';
import 'package:agriscape/models/productmodel.dart';
import 'package:agriscape/utils/Constants.dart';
import 'package:dio/dio.dart';
import '../models/getallproducts.dart';

class Api
{
  Dio dio = Dio(BaseOptions(
    baseUrl:Constants.baseUrl,
  ));

  // Future? userLogin({String? mobile_number}) async {
  //   var data = FormData.fromMap({
  //     "mobile_number":mobile_number
  //   });
  //   String username = 'AgroScape_hY26AEqb27';
  //   String password = 'S47djXv4ru:QNlqh£<)G';
  //   String basicAuth =
  //       'Basic ' + base64.encode(utf8.encode('$username:$password'));
  //   try{
  //     var response = await dio.post("login",options: Options( headers: <String, String>{'authorization': basicAuth}),data: data)  ;
  //     if(response.statusCode == 200 || response.statusCode == 201) {
  //       response.data['status'] !=null;{
  //       }
  //           return response.data;
  //       }
  //   }
  //   on DioException catch(ex){
  //     return apiDialog(
  //       ex.response!.data["Login Successful. OTP sent to your number"] ?? "Please Try Agian later"
  //     );
  //   }
  // }
  Future? verifyOtp({String? otp,String? customer_id,String? notification_token}) async {

    Map<String, dynamic> formMap = {
      "otp": otp,
      "customer_id": customer_id,
      "notification_token": notification_token,
    };
    String username = 'AgroScape_hY26AEqb27';
    String password = 'S47djXv4ru:QNlqh£<)G';
    String basicAuth =
        'Basic ' + base64.encode(utf8.encode('$username:$password'));
    try{
      var response = await dio.post('otpverify',options: Options( headers: <String, String>{'authorization': basicAuth}));
      if(response.statusCode == 200 || response.statusCode == 201) {
        response.data['data'] !=null;{
        }
        return response.data;
      }
        }
    on DioException catch(ex){
      return apiDialog(
          ex.response!.data["Login Successful. OTP sent to your number"] ?? "Please Try Agian later"
      );
    }
  }
  Future? userRegister(
      String? customer_id,
      String? name,
      String? company_name,
      String? village_id,
      String? notification_token,
      ) async
  {
    var data = FormData.fromMap({
      "customer_id":customer_id,
      "name":name,
      "company_name":company_name,
      "village_id":village_id,
      "notification_token":notification_token
    });
    String username = 'AgroScape_hY26AEqb27';
    String password = 'S47djXv4ru:QNlqh£<)G';
    String basicAuth =
        'Basic ' + base64.encode(utf8.encode('$username:$password'));
    try {
      var response = await dio.post('user',options: Options(headers: <String, String>{'authorization': basicAuth}));
      if(response.statusCode == 200 || response.statusCode == 201) {
        response.data['status'] !=null;{
        }
        return response.data;
        }
        }
    on DioException catch(ex){
      return apiDialog(
          ex.response!.data["Login Successful. OTP sent to your number"] ?? "Please Try Agian later"
      );
    }
  }
  Future? getProducts() async{
    try{
      String username = 'AgroScape_hY26AEqb27';
      String password = 'S47djXv4ru:QNlqh£<)G';
      String basicAuth =
          'Basic ' + base64.encode(utf8.encode('$username:$password'));
      var response = await dio.get('product/1',options: Options(headers: <String, String>{'authorization': basicAuth}));
      if(response.statusCode == 200 || response.statusCode == 201) {
        print('Get Products Api response =========='+response.data);
        }
      return ProductModel.fromJson(response.data);
    }
    on DioException catch(ex) {
      print(ex);
    }
  }


  var alldata;

  Future? getAllProducts() async{
    try{
      var response = await dio.get('https://dummyjson.com/products?limit=30');
      if(response.statusCode == 200 || response.statusCode == 201){
        print("Get All Products ================="+response.data.toString());
      }
      return GetAllProductsModel.fromJson(response.data);
    }
    on DioException catch(ex){
      print(ex);
    }
  }
}