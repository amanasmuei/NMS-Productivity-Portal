import 'package:nms_productivity_portal/views/Activity_detail.dart';
import 'package:nms_productivity_portal/views/Add_activity.dart';
import 'package:nms_productivity_portal/views/Dashboard.dart';
import 'package:nms_productivity_portal/views/Report.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nms_productivity_portal/views/signin_page.dart';

int _selectedPageIndex = 0;

var _pages = [
  Report(),
  AddActivity(),
];
class DashboardDetails extends StatefulWidget {
  @override
  _DashboardDetailsState createState() => _DashboardDetailsState();
}
class _DashboardDetailsState extends State<DashboardDetails> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text("TSFP Productivity Portal"),
          actions: [
            PopupMenuButton<String>(
              icon: Icon(Icons.account_circle),
              onSelected: (String result) {
                switch (result) {
                  case 'Logout':
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                    break;
                }
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Logout',
                  child: Text('Logout'),
                ),
              ],
            ),
          ],
        ),



        body:
        SingleChildScrollView(
          child: Container(
            padding: new EdgeInsets.only(left: 16.0, bottom: 16.0, right: 16.0,top: 16.0),

            child: new Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Text("Activity 2021-07",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                    ),),



                  //code for TITLE 1
                  new Card(
                    color: Colors.lightBlue,
                    child: new Column(
                        children: <Widget>[
                          new Padding(
                            padding: new EdgeInsets.only(left: 16.0, bottom: 16.0, right: 16.0,top: 16.0),
                            child: Container(// background
                              height: 50.0,
                              width: 500.0,
                              child: Row(
                                children: <Widget>[
                                  Text("Title 1",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  PopupMenuButton<String>(
                                    padding: EdgeInsets.only(left: 250),
                                    icon: Icon(Icons.receipt),
                                    onSelected: (String result) {
                                      switch (result) {
                                        case 'duplicate':
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => ActivityDetails()),
                                          );
                                          break;
                                        default:
                                      }
                                    },
                                    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                                      const PopupMenuItem<String>(
                                        value: 'duplicate',
                                        child: Text('Duplicate'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]
                    ),
                  ),

                  //code for TITLE 1
                  new Card(
                    color: Colors.lightBlue,
                    child: new Column(
                        children: <Widget>[
                          new Padding(
                            padding: new EdgeInsets.all(7.0),
                            child: Container(// background
                              height: 50.0,
                              width: 500.0,
                              child: Row(
                                children: <Widget>[
                                  Text("Title 1",textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  PopupMenuButton<String>(
                                    padding: EdgeInsets.only(left: 250),
                                    icon: Icon(Icons.receipt),
                                    onSelected: (String result) {
                                      switch (result) {
                                        case 'report':
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => ActivityDetails()),
                                          );
                                          break;
                                        default:
                                      }
                                    },
                                    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                                      const PopupMenuItem<String>(
                                        value: 'report',
                                        child: Text('Report'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          new Image.asset("assets/nmslogo.png"),
                          new Padding(
                            padding: new EdgeInsets.all(7.0),
                          ),
                        ]),
                  ),


                  //code for TITLE 2
                  new Card(
                    color: Colors.pink[200],
                    child: new Column(
                        children: <Widget>[
                          new Padding(
                            padding: new EdgeInsets.all(7.0),
                            child: Container(// background
                              height: 50.0,
                              width: 500.0,
                              child: Row(
                                children: <Widget>[
                                  Text("Title 2",textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  PopupMenuButton<String>(
                                    padding: EdgeInsets.only(left: 250),
                                    icon: Icon(Icons.receipt),
                                    onSelected: (String result) {
                                      switch (result) {
                                        case 'duplicate':
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => ActivityDetails()),
                                          );
                                          break;
                                        default:
                                      }
                                    },
                                    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                                      const PopupMenuItem<String>(
                                        value: 'duplicate',
                                        child: Text('Duplicate'),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          new Image.asset("assets/nmslogo.png"),
                          new Padding(
                            padding: new EdgeInsets.all(7.0),
                          ),
                        ]),
                  ),

                  //code for TITLE 2
                  new Card(
                    color: Colors.pink[200],
                    child: new Column(
                        children: <Widget>[
                          new Padding(
                            padding: new EdgeInsets.all(7.0),
                            child: Container(// background
                              height: 50.0,
                              width: 500.0,
                              child: Row(
                                children: <Widget>[
                                  Text("Title 2",textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  PopupMenuButton<String>(
                                    padding: EdgeInsets.only(left: 250),
                                    icon: Icon(Icons.receipt),
                                    onSelected: (String result) {
                                      switch (result) {
                                        case 'duplicate':
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => ActivityDetails()),
                                          );
                                          break;
                                        default:
                                      }
                                    },
                                    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                                      const PopupMenuItem<String>(
                                        value: 'duplicate',
                                        child: Text('Duplicate'),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          new Image.asset("assets/nmslogo.png"),
                          new Padding(
                            padding: new EdgeInsets.all(7.0),
                          ),
                        ]),
                  ),




                ]),
          ),
        ),
    );

  }
}