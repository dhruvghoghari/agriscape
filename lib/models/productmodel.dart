class ProductModel {
  String? status;
  List<Data>? data;

  ProductModel({this.status, this.data});

  ProductModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? productId;
  int? customerId;
  String? productName;
  String? unit;
  String? amount;

  Data(
      {this.productId,
        this.customerId,
        this.productName,
        this.unit,
        this.amount});

  Data.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    customerId = json['customer_id'];
    productName = json['product_name'];
    unit = json['unit'];
    amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['customer_id'] = this.customerId;
    data['product_name'] = this.productName;
    data['unit'] = this.unit;
    data['amount'] = this.amount;
    return data;
  }
}
