import 'package:flutter/material.dart';
import 'package:nms_productivity_portal/views/bottom_nav_bar.dart';
import 'package:nms_productivity_portal/views/signin_page.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(new MaterialApp(
    home: new SignInPage(),


  ));
}