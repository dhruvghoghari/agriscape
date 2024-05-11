import 'dart:convert';

UserLogin userLoginFromJson(String str) => UserLogin.fromJson(json.decode(str));
String userLoginToJson(UserLogin data) => json.encode(data.toJson());

class UserLogin {
  String? status;
  String? msg;
  int? customerId;
  int? otp;
  String? token;

  UserLogin({
    this.status,
    this.msg,
    this.customerId,
    this.otp,
    this.token,
  });

  factory UserLogin.fromJson(Map<String, dynamic> json) => UserLogin(
    status: json["status"],
    msg: json["msg"],
    customerId: json["customer_id"],
    otp: json["otp"],
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "msg": msg,
    "customer_id": customerId,
    "otp": otp,
    "token": token,
  };
}
