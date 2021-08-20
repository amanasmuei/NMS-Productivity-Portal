import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nms_productivity_portal/services/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {

  var loginProcess = false.obs;
  var statusAuth = false.obs;
  var error = "";
  final user_token = GetStorage();

  Future<String> login({String staffid, String password}) async {
    error = "";
    try {
      loginProcess(true);

      List loginResp = await Api.login(staffId: staffid, password: password);
      print(loginResp[0]['success']);
      
      if (loginResp[0]['success'] != false) {
        // to store token
        print(loginResp[0]['data']['token']);
        
        // final prefs = await SharedPreferences.getInstance();
        // prefs.setString("name", loginResp[0]['data']['name']);
        // prefs.setString("token", loginResp[0]['data']['token']);
        // prefs.setString("staff_id", loginResp[0]['data']['staff_id']);
        user_token.write('name',loginResp[0]['data']['name']);
        user_token.write('token',loginResp[0]['data']['token']);
        user_token.write('staff_id',loginResp[0]['data']['staff_id']);

      } else {
        error = loginResp[0]['data'];
        print(error);
      }
    } finally {
      loginProcess(false);
    }
    return error;
  }

  Future<String> checkAuth() async {
    // SharedPreferences localStorage = await SharedPreferences.getInstance();
    final userToken = user_token.read('token');
    // var token = localStorage.getString('token');
    // statusAuth(true);
    // return true;
    if(userToken != null){
      return userToken;
    } else {
      return null;
    }
  }
}