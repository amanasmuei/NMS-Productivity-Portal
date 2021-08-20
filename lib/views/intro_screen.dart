import 'dart:async';
// import 'package:nms_productivity_portal/views/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:nms_productivity_portal/views/bottom_nav_bar.dart';


class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  @override
  void initState() {

    super.initState();
    // Timer(Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavBar())));
  }

  @override
  Widget build(BuildContext context) {
    final staffName = GetStorage();
    String staffname = staffName.read('name');

    final String assetName = 'assets/image.svg';
    final Widget svg = SvgPicture.asset(
      assetName,
      semanticsLabel: 'Acme Logo'
    );

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 90),
                  child: svg
                ),

                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Text(
                    "TSFP Productivity Portal",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Text(
                    "Welcome, \n" + staffname ,
                    style: TextStyle(
                      color: Colors.black87,
                      /*fontWeight: FontWeight.bold,*/
                      fontSize: 25.0,
                    ),
                  ),

                ),
              ],
            ),
            CircularProgressIndicator(),
          ],
        ),

      ),

    );
  }
}