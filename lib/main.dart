import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes.dart';
import 'utils/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Get.put(AppController());

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
      initialRoute: "/",
      getPages: routes(),
    );
  }
}