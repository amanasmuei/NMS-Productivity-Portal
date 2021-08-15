import 'package:get/state_manager.dart';
import 'package:nms_productivity_portal/services/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  var loginProcess = false.obs;
  var error = "";

  Future<String> login({String email, String password}) async {
    error = "";
    try {
      loginProcess(true);
      List loginResp = await Api.login(staffId: email, password: password);
      if (loginResp[0] != "") {
        //success
        final prefs = await SharedPreferences.getInstance();
        prefs.setString("token", loginResp[0]);
      } else {
        error = loginResp[1];
      }
    } finally {
      loginProcess(false);
    }
    return error;
  }
}