import 'package:flutter/material.dart';
import 'package:nms_productivity_portal/utils/colors.dart';
import 'package:get/get.dart';
import 'package:nms_productivity_portal/controllers/LoginController.dart';
import 'package:nms_productivity_portal/views/intro_screen.dart';

class SignInPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignInPage> {
  final LoginController controller = Get.put(LoginController());
  var _staffIdTextController = TextEditingController(text: "");
  var _passwordTextController = TextEditingController(text: "");
  var _passwordVisible = false;
  final _formKey = GlobalKey<FormState>();

  FocusNode myFocusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 52, right: 52),
          child: Obx(() {
            return Form(
              child: Center(
                  child: Container(
                key: _formKey,
                child: Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset("assets/nmslogo.png"),
                            height: 150,
                            width: 150,
                          ),
                          SizedBox(height: 4),
                          Text(
                            "TSFP Productivity Portal",
                            style: TextStyle(
                              fontSize: 29,
                              fontFamily: 'Kanit',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            enabled: !controller.loginProcess.value,
                            controller: _staffIdTextController,
                            cursorColor: Colors.grey,
                            focusNode: myFocusNode,
                            decoration: InputDecoration(
                              icon: Icon(Icons.person),
                              labelText: 'Staff Id',
                            ),
                          ),
                          SizedBox(height: 8),
                          TextFormField(
                            enabled: !controller.loginProcess.value,
                            controller: _passwordTextController,
                            decoration: InputDecoration(
                                icon: Icon(Icons.lock),
                                labelText: "Password",
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _passwordVisible
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                )),
                            obscureText: !_passwordVisible,
                            validator: (String value) => value.trim().isEmpty
                                ? "Password is require"
                                : null,
                          ),
                          SizedBox(height: 32),
                          Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(30),
                            color: controller.loginProcess.value
                                ? AppColors.ORANGE
                                : AppColors.ORANGE,
                            child: MaterialButton(
                              minWidth: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                              onPressed: () async {
                                Get.defaultDialog(
                                        title: "Oop!", middleText: "Pressed");
                                if (_formKey.currentState.validate()) {
                                  String error = await controller.login(
                                      email: _staffIdTextController.text,
                                      password: _passwordTextController.text);
                                  if (error != "") {
                                    Get.defaultDialog(
                                        title: "Oop!", middleText: error);
                                  } else {
                                    Get.to(IntroScreen());
                                  }
                                }
                              },
                              child: Text(
                                "Login",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xffEEEEEE),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ]),
                  ),
                ),
              )),
            );
          }),
        ),
        // child: Column(
        //   children: [
        //     Container(
        //       child: Center(
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           children: [
        //             Container(
        //               margin: EdgeInsets.only(top: 150),
        //               child: Image.asset("assets/nmslogo.png"),
        //               height: 150,
        //               width: 150,
        //             ),
        //             Container(
        //               margin: EdgeInsets.only(top: 50),
        //               alignment: Alignment.center,
        //               child: Text(
        //                 "TSFP Productivity Portal",
        //                 style: TextStyle(
        //                   fontSize: 25,
        //                   fontStyle: FontStyle.italic,
        //                   color: Colors.blueAccent,
        //                 ),
        //               ),
        //             ),
        //             Container(
        //               margin: EdgeInsets.only(left: 20, right: 20, top: 35),
        //               padding: EdgeInsets.only(left: 20, right: 20),
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(10),
        //                 color: Colors.grey[200],
        //                 boxShadow: [
        //                   BoxShadow(
        //                       offset: Offset(0, 10), color: Color(0xffEEEEEE))
        //                 ],
        //               ),
        //               alignment: Alignment.center,
        //               child: TextField(
        //                 cursorColor: Colors.grey,
        //                 decoration: InputDecoration(
        //                   icon: Icon(
        //                     Icons.person,
        //                     color: Colors.grey,
        //                   ),
        //                   hintText: "Enter User ID",
        //                   enabledBorder: InputBorder.none,
        //                   focusedBorder: InputBorder.none,
        //                 ),
        //               ),
        //             ),

        //             Container(
        //               margin: EdgeInsets.only(left: 20, right: 20, top: 35),
        //               padding: EdgeInsets.only(left: 20, right: 20),
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(10),
        //                 color: Colors.grey[200],
        //                 boxShadow: [
        //                   BoxShadow(
        //                       offset: Offset(0, 10), color: Color(0xffEEEEEE))
        //                 ],
        //               ),
        //               alignment: Alignment.center,
        //               child: TextField(
        //                 obscureText: true,
        //                 cursorColor: Colors.grey,
        //                 decoration: InputDecoration(
        //                   icon: Icon(
        //                     Icons.lock,
        //                     color: Colors.grey,
        //                   ),
        //                   suffixIcon: Icon(
        //                     Icons.visibility,
        //                     color: Colors.grey,
        //                   ),
        //                   hintText: "Enter Password",
        //                   enabledBorder: InputBorder.none,
        //                   focusedBorder: InputBorder.none,
        //                 ),
        //               ),
        //             ),
        //             GestureDetector(
        //               onTap: () => {
        //                 Navigator.push(
        //                     context,
        //                     MaterialPageRoute(
        //                         builder: (context) => IntroScreen()))
        //                 /*showDialog(context: context, builder: (context) => LoginUnsuccessfulMessage()) // for unsuccessful login*/
        //               },
        //               child: Container(
        //                 margin: EdgeInsets.only(left: 50, right: 50, top: 50),
        //                 padding: EdgeInsets.only(left: 30, right: 30),
        //                 alignment: Alignment.center,
        //                 height: 54,
        //                 decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(10),
        //                   color: Color(0xFFF89034),
        //                   boxShadow: [
        //                     BoxShadow(
        //                         offset: Offset(0, 10), color: Color(0xffEEEEEE))
        //                   ],
        //                 ),
        //                 child: Text(
        //                   "Sign In",
        //                   style: TextStyle(color: Colors.white),
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     )
        //   ],
        // ),
      ),
    );
  }
}
