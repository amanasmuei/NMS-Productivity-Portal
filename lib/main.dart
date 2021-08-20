import 'package:get_storage/get_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes.dart';
import 'utils/colors.dart';
import 'package:nms_productivity_portal/controllers/AuthController.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final token = GetStorage();
  final AuthController controller = Get.put(AuthController());
  // Future<bool> get userToken async {
  //   var authToken = await token.read("token");
  //   if(authToken == null) return false;
  //   return true;
  // }
  // final AuthController controller = Get.put(AuthController());
  // await controller.checkAuth();

  
  @override
  Widget build(BuildContext context) {
    controller.checkAuth();
    String authToken = token.read('token');
    
    print(authToken);

    return GetMaterialApp(  
      title: 'TSFP Productivity Portal',
      enableLog: true,
      defaultTransition: Transition.fade,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primarySwatch: AppColors.ORANGE,

        // Define the default font family.
        fontFamily: 'Gugi',
        backgroundColor: Colors.white,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
        cupertinoOverrideTheme: CupertinoThemeData(brightness: Brightness.dark)
      ),
      // ignore: unrelated_type_equality_checks
      initialRoute: authToken != null ? "/intro":"/signIn",
      getPages: routes(),
    );
  }
}