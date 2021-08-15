import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nms_productivity_portal/models/login.dart';
import 'package:nms_productivity_portal/models/product.dart';

class Api {
  static var client = http.Client();
  static var _baseURL = "https://tsfp-api.10.49.39.215.nip.io/api";

  static Future<List<Product>> fetchProducts() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<List> login({String staffId, String password}) async {
    var response = await client.post(Uri.parse('$_baseURL/auth/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:
            jsonEncode(<String, String>{"staff_id": staffId, "password": password}));

    if (response.statusCode == 200) {
      var json = response.body;
      var loginRes = loginRespFromJson(json);
      return [loginRes];
      
    } else {
      var json = response.body;
      var errorResp = loginRespFromJson(json);
       return [errorResp];
    }
  }
}