import 'package:nms_productivity_portal/Report.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nms_productivity_portal/PlaceholderWidget.dart';


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
          title: Text("NMS Productivity Portal"),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () => debugPrint("user"),
                  child: Icon(
                    Icons.account_circle,
                    size: 30.0,
                  ),
                )
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
                        child: new Text("Overall Monthly",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),),
                          onPressed: () {
                          print('Overall Monthly');
                          },
                         /* style: ElevatedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                            ),
                          ),*/
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






