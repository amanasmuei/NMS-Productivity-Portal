import 'package:nms_productivity_portal/Add_activity.dart';
import 'package:nms_productivity_portal/Dashboard.dart';
import 'package:nms_productivity_portal/Report.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nms_productivity_portal/signin_page.dart';

int _selectedPageIndex = 0;

var _pages = [
  Report(),
  AddActivity(),
];
class ActivityDetails extends StatefulWidget {
  @override
  _ActivityDetailsState createState() => _ActivityDetailsState();
}
class _ActivityDetailsState extends State<ActivityDetails> {


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



        body:    /*_children[_currentIndex],*/
        SingleChildScrollView(
          child: Container(
            padding: new EdgeInsets.only(left: 16.0, bottom: 0.0, right: 16.0,),
            child: new Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Text("Activity Detail",textAlign: TextAlign.start,
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
                                ],
                              ),
                            ),
                          ),


                          GestureDetector(
                            onTap: () => {

                              /*submit*/
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 50, right: 50, top: 50),
                              padding: EdgeInsets.only(left: 30, right: 30),
                              alignment: Alignment.center,
                              height: 54,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.pink[400],
                              ),
                              child: Text(
                                "Duplicate",
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                          new Padding(
                            padding: new EdgeInsets.all(7.0),
                          ),
                          GestureDetector(
                            onTap: () => {

                              /*submit*/
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 50, right: 50, top: 50),
                              padding: EdgeInsets.only(left: 30, right: 30),
                              alignment: Alignment.center,
                              height: 54,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.pink[400],
                              ),
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                          new Padding(
                            padding: new EdgeInsets.all(7.0),
                          ),
                        ]),

                  ),







                ]),
          ),
        ),








        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedFontSize: 20,
          unselectedFontSize: 15,
          selectedIconTheme: IconThemeData(color: Colors.deepOrange),
          selectedItemColor: Colors.deepOrange,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add Activity',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt),
              label: 'Report',
            ),
          ],

        )
    );

  }
}