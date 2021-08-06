import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nms_productivity_portal/PlaceholderWidget.dart';
import 'package:nms_productivity_portal/Add_activity.dart';
import 'package:nms_productivity_portal/signin_page.dart';


class Dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<Dashboard>{
  _getSizes() {
  }

  _getPositions(){
  }
  /* DateTime selectedDate = DateTime.now();

  /// This decides which day will be enabled
  /// This will be called every time while displaying day in calender.
  bool _decideWhichDayToEnable(DateTime day) {
    if ((day.isAfter(DateTime.now().subtract(Duration(days: 1))) &&
        day.isBefore(DateTime.now().add(Duration(days: 10))))) {
      return true;
    }
    return false;
  }

  _selectDate(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    assert(theme.platform != null);
    switch (theme.platform) {
      case TargetPlatform.android:

      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return buildMaterialDatePicker(context);
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return buildCupertinoDatePicker(context);
    }
  }*/

  /*String dropdownvalue = '1';
  var items =  ['1','2','3','4','5','6','7','8','9','10','11','12'];*/




  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  void _onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  int _currentIndex = 0;
  final List<Widget> _children = <Widget>[
    Icon(
      Icons.dashboard_outlined,
      size: 150,
    ),
    Icon(
      Icons.add,
      size: 150,
    ),
    Icon(
      Icons.receipt,
      size: 150,
    ),
    /* PlaceholderWidget(Colors.purpleAccent),
    PlaceholderWidget(Colors.blueAccent),*/
  ];


  Widget initWidget() {
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
                children: [
                  Text(
                    'Dashboard 2021-07',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  /*Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton(
                      value: dropdownvalue,
                      icon: Icon(Icons.keyboard_arrow_down),
                      items:items.map((String items) {
                        return DropdownMenuItem(
                            value: items,
                            child: Text(items)
                        );
                      }
                      ).toList(),
                      onChanged: (String newValue){
                        setState(() {
                          dropdownvalue = newValue;
                        });
                      },
                    ),
                  ],
                ),*/



                  //code for monthly
                  new Card(
                    child: new Column(
                      children: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.all(7.0),
                          child: Container(// background
                            color: Colors.pink[200],// foreground
                            height: 50.0,
                            width: 500.0,
                            child: Text("Overall Monthly",textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),

                          ),

                        ),

                        //code for productivity and mandays here


                        new Padding(
                            padding: new EdgeInsets.all(7.0),
                            child: new Row(
                              children: <Widget>[
                                new Padding(
                                    padding: new EdgeInsets.all(7.0),
                                    child: ElevatedButton.icon(
                                      icon: Icon(
                                        Icons.arrow_right,
                                        color: Color.fromRGBO(49, 87, 110, 1.0),
                                        size: 50.0,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white, // background
                                        onPrimary: Color.fromRGBO(49, 87, 110, 1.0),// foreground
                                      ),
                                      label: new Text("View Details",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      onPressed: () =>
                                      {
                                        Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => AddActivity()
                                        ))
                                      },
                                    )
                                )


                              ],
                            )
                        )
                      ],
                    ),
                  ),


                  //code for yearly
                  new Card(
                    child: new Column(
                      children: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.all(7.0),
                          child: Container(// background
                            color: Colors.lightGreen,// foreground
                            height: 50.0,
                            width: 500.0,
                            child: Text("Overall Yearly",textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),



                          ),

                        ),
                        //code for productivity and mandays here

                        new Padding(
                            padding: new EdgeInsets.all(7.0),
                            child: new Row(
                              children: <Widget>[
                                new Padding(
                                    padding: new EdgeInsets.all(7.0),
                                    child: ElevatedButton.icon(
                                      icon: Icon(
                                        Icons.arrow_right,
                                        color: Color.fromRGBO(49, 87, 110, 1.0),
                                        size: 50.0,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.white, // background
                                        onPrimary: Color.fromRGBO(49, 87, 110, 1.0),// foreground
                                      ),
                                      label: new Text("View Details",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      onPressed: () =>
                                      {
                                        Navigator.push(context, MaterialPageRoute(
                                            builder: (context) => AddActivity()
                                        ))
                                      },
                                    )
                                )
                              ],
                            )
                        )
                      ],
                    ),
                  ),


            Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                textDirection: TextDirection.rtl,
                children: [
                  Text(
                    'Summary',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 27.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ]
            ),




                ]),
          ),
        ),






        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
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
