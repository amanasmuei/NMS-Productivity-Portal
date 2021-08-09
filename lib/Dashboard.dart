import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nms_productivity_portal/Add_activity.dart';
import 'package:nms_productivity_portal/Dashboard_details.dart';
import 'package:nms_productivity_portal/PlaceholderWidget.dart';
import 'package:nms_productivity_portal/Report.dart';

import 'package:nms_productivity_portal/signin_page.dart';


class Dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<Dashboard>{




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
                  children: <Widget>[
                    Text("Dashboard 2021-07",textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold
                      ),),
                    PopupMenuButton<String>(
                      icon: Icon(Icons.filter_alt),
                      onSelected: (String result) {
                        switch (result) {
                          case 'January':
                            print('filter 1 clicked');
                            break;
                          case 'February':
                            print('filter 2 clicked');
                            break;
                          case 'March':
                            print('Clear filters');
                            break;
                          case 'April':
                            print('filter 2 clicked');
                            break;
                          case 'May':
                            print('filter 2 clicked');
                            break;
                          case 'June':
                            print('filter 2 clicked');
                            break;
                          case 'July':
                            print('filter 2 clicked');
                            break;
                          case 'August':
                            print('filter 2 clicked');
                            break;
                          case 'September':
                            print('filter 2 clicked');
                            break;
                          case 'October':
                            print('filter 2 clicked');
                            break;
                          case 'November':
                            print('filter 2 clicked');
                            break;
                          case 'December':
                            print('filter 2 clicked');
                            break;
                          default:
                        }
                      },
                      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                        const PopupMenuItem<String>(
                          value: 'January',
                          child: Text('January'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'filter2',
                          child: Text('February'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'filter2',
                          child: Text('March'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'filter2',
                          child: Text('April'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'filter2',
                          child: Text('May'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'filter2',
                          child: Text('June'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'filter2',
                          child: Text('July'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'filter2',
                          child: Text('August'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'filter2',
                          child: Text('September'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'filter2',
                          child: Text('October'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'filter2',
                          child: Text('November'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'clearFilters',
                          child: Text('December'),
                        ),
                      ],
                    ),



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
                              child: Row(
                                children: <Widget>[
                                Text("Overall Monthly",textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold
                                ),),
                                  PopupMenuButton<String>(
                                    icon: Icon(Icons.receipt),
                                    onSelected: (String result) {
                                      switch (result) {
                                        case 'details':
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => DashboardDetails()),
                                          );
                                          break;
                                        default:
                                      }
                                    },
                                    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                                      const PopupMenuItem<String>(
                                        value: 'details',
                                        child: Text('Details'),
                                      ),
                                    ],
                                  ),

                                    ],
                                ),
                              ),
                            ),





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
                        ),
                      ]),
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
                            child: Row(
                              children: <Widget>[
                                Text("Overall Yearly",textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                PopupMenuButton<String>(
                                  icon: Icon(Icons.receipt),
                                  onSelected: (String result) {
                                    switch (result) {
                                      case 'report':
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Report()),
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