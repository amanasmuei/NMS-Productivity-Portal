import 'package:flutter/cupertino.dart';
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
  final _formKey = new GlobalKey<FormState>();

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
              key: _formKey,
              child: Center(
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
                              fontSize: 24,
                              fontFamily: 'Gugi',
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
                            validator: (String value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter staff id';
                              }
                              return null;
                            },
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
                                ? Color(0XFFFF9100)
                                : AppColors.ORANGE,
                            child: MaterialButton(
                              minWidth: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                              onPressed: () async {
                                print("masuk");
                                if (_formKey.currentState.validate()) {
                                  String error = await controller.login(
                                      staffid: _staffIdTextController.text,
                                      password: _passwordTextController.text);
                                  if (error != "") {
                                    Get.defaultDialog(
                                        title: "Oop!", middleText: error);
                                  } else {
                                    Get.to(() => IntroScreen());
                                  }
                                } else {
                                  print("Invalid form");
                                }
                              },
                              child: controller.loginProcess.value
                                ? new CupertinoActivityIndicator()
                                : Text(
                                "Login",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Gugi',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ]),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
