import 'package:eighthome/screens/product_data.dart';

class Products {
  String? _name;
  String? _rate;
  String? _picture;

  Products({String? name, String? rate, String? picture}) {
    if (name != null) {
      this._name = name;
    }
    if (rate != null) {
      this._rate = rate;
    }
    if (picture != null) {
      this._picture = picture;
    }
  }

  String? get name => _name;
  set name(String? name) => _name = name;
  String? get rate => _rate;
  set rate(String? rate) => _rate = rate;
  String? get picture => _picture;
  set picture(String? picture) => _picture = picture;

  Products.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _rate = json['rate'];
    _picture = json['picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['rate'] = this._rate;
    data['picture'] = this._picture;
    return data;
  }
}