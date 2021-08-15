
import 'dart:convert';

Login loginRespFromJson(String str) => Login.fromJson(json.decode(str));
String loginRespToJson(Login data) => json.encode(data.toJson());

class Login {
  bool success;
  String data;

  Login({this.success, this.data});

  Login.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['data'] = this.data;
    return data;
  }
}