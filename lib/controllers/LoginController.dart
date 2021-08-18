import 'package:get/state_manager.dart';
import 'package:nms_productivity_portal/services/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  var loginProcess = false.obs;
  var error = "";

  Future<String> login({String staffid, String password}) async {
    error = "";
    try {
      loginProcess(true);
      List loginResp = await Api.login(staffId: staffid, password: password);
      print(loginResp[0]['success']);
      if (loginResp[0]['success'] != false) {
        // to store token
        final prefs = await SharedPreferences.getInstance();
        prefs.setString("name", loginResp[0]['name']);
        prefs.setString("token", loginResp[0]['token']);
        prefs.setString("staff_id", loginResp[0]['staff_id']);
      } else {
        error = loginResp[0]['data'];
        print(error);
      }
    } finally {
      loginProcess(false);
    }
    return error;
  }
}