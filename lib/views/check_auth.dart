import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/route_manager.dart';


class CheckAuth extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CheckAuth> {
  bool isAuth = false;
  @override
  void initState() {
    super.initState();
    //  SharedPreferences localStorage = await SharedPreferences.getInstance();
    // var token = localStorage.getString('token');
    // if(token != null){
    //   setState(() {
    //     isAuth = true;
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (isAuth) {
      child = Get.toNamed('/intro') as Widget;
    } else {
      child = Get.toNamed("/NextScreen") as Widget;
    }
    return Scaffold(
      body: child
    );
  }
}