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
class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}
class _ReportState extends State<Report> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
          AppBar(
            backgroundColor: Color.fromRGBO(49, 87, 110, 1.0),
            title: Text("NMS Productivity Portal"),
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
        body: Container(
          padding: new EdgeInsets.only(left: 16.0, bottom: 0.0, right: 16.0,),
          child: new Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              textDirection: TextDirection.rtl,
              children: [
                Text(
                  'Dashboard 2021-07',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold
                  ),
                ),



                new Card(
                  child: new Column(
                    children: <Widget>[
                      new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // background
                            onPrimary: Color.fromRGBO(49, 87, 110, 1.0),// foreground
                          ),
                          child: new Text("Overall Monthly",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold
                            ),),
                          onPressed: () {
                            print('Overall Monthly');
                          },

                        ),
                      ),

                      new Image.asset("assets/nmslogo.png"),
                      new Padding(
                          padding: new EdgeInsets.all(7.0),
                          child: new Row(
                            children: <Widget>[
                              new Padding(
                                padding: new EdgeInsets.all(7.0),
                                child: new Text('View Details',style: new TextStyle(fontSize: 18.0),),
                              ),
                              DropdownButton<String>(
                                items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                              )


                            ],
                          )
                      )
                    ],
                  ),
                ),
                new Card(
                  child: new Column(
                    children: <Widget>[
                      new Padding(
                        padding: new EdgeInsets.all(7.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // background
                            onPrimary: Color.fromRGBO(49, 87, 110, 1.0),// foreground
                          ),
                          child: new Text("Overall Yearly",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold
                            ),),
                          /*onPressed: () {
                            print('Overall Yearly');
                          },*/

                          onPressed: () =>
                          {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Report()
                            ))
                          },

                        ),
                      ),
                      new Image.asset("assets/nmslogo.png"),
                      new Padding(
                          padding: new EdgeInsets.all(7.0),
                          child: new Row(
                            children: <Widget>[
                              new Padding(
                                padding: new EdgeInsets.all(7.0),
                                child: new Text('View Details',style: new TextStyle(fontSize: 18.0),),
                              ),
                              DropdownButton<String>(
                                items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                                /*hint:Text("Select item"),
                                disabledHint:Text("Disabled")
                                elevation: 8,
                                style:TextStyle(color:Colors.white, fontSize: 16),
                                icon: Icon(Icons.arrow_drop_down_circle),
                                iconDisabledColor: Colors.red,
                                iconEnabledColor: Colors.green,
                                isExpanded: true,*/
                              )


                            ],
                          )
                      )
                    ],
                  ),
                ),




              ]),
        ),

        /*_children[_currentIndex],*/




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
          currentIndex: _selectedPageIndex,
          onTap: (index) {
            setState(() {
              _selectedPageIndex = index;
            });
            },
        ),
    );


  }
}
