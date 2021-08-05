import 'package:flutter/material.dart';
import 'package:nms_productivity_portal/intro_screen.dart';

class SignInPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignInPage>{
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 150),
                      child: Image.asset("assets/nmslogo.png"),
                      height: 150,
                      width: 150,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      alignment: Alignment.center,
                      child: Text(
                        "FSTP Productivity Portal",
                        style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 35),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                        boxShadow: [BoxShadow(
                            offset: Offset(0,10),
                            color: Color(0xffEEEEEE)
                        )],
                      ),
                      alignment: Alignment.center,
                      child: TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                          hintText: "Enter User ID",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 35),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                        boxShadow: [BoxShadow(
                            offset: Offset(0,10),
                            color: Color(0xffEEEEEE)
                        )],
                      ),
                      alignment: Alignment.center,
                      child: TextField(
                        obscureText: true,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Colors.grey,
                          ),
                          hintText: "Enter Password",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: () => {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => IntroScreen()
                        ))
                        /*showDialog(context: context, builder: (context) => LoginUnsuccessfulMessage()) // for unsuccessful login*/
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 50, right: 50, top: 50),
                        padding: EdgeInsets.only(left: 30, right: 30),
                        alignment: Alignment.center,
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFF89034),
                          boxShadow: [BoxShadow(
                              offset: Offset(0,10),
                              color: Color(0xffEEEEEE)
                          )],
                        ),
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}