import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nms_productivity_portal/models/login.dart';
import 'package:nms_productivity_portal/models/product.dart';

class Api {
  static var client = http.Client();
  static var _baseURL = "http://10.49.39.205:8181/api";

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
    
    var url = Uri.parse('$_baseURL/auth/login');
    var request = new http.MultipartRequest('POST', url);

    request.fields['staff_id'] = staffId;
    request.fields['staff_password'] = password;

    var streamedResponse = await request.send();
    var response = await http.Response.fromStream(streamedResponse);
    print(response.body);
    final responseJson = json.decode(response.body);
    print(responseJson);

    return [responseJson];
    
    // var response = await client.post(Uri.parse('$_baseURL/auth/login'),
    //     headers: <String, String>{
    //       'Content-Type': 'multipart/form-data;',
    //     },
    //     body: jsonEncode(
    //         <String, String>{"staff_id": staffId, "staff_password": password}));

    // if (response.statusCode == 200) {
    //   var json = response.body;
    //   print(json);
    //   // var loginRes = loginRespFromJson(json);
    //   // return [loginRes];
    // } else {
    //   var json = response.body;
    //   print(json);
    //   var errorResp = loginRespFromJson(json);
    //   return [errorResp];
    // }
  }
}
