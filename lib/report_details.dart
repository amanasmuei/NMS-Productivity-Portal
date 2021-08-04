import 'package:nms_productivity_portal/Dashboard.dart';
import 'package:nms_productivity_portal/Report.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int _selectedPageIndex = 0;

var _pages = [
  Report(),
  /*ProfilePage(),*/
];
class reportdetails extends StatefulWidget {
  @override
  _reportdetailsState createState() => _reportdetailsState();
}
class _reportdetailsState extends State<reportdetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Report Details"),
        elevation: .1,
        backgroundColor: Color.fromRGBO(49, 87, 110, 1.0),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.account_circle),
              onPressed: () => debugPrint("notification")
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
                'Section: ALL: 2021',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
                ),
              ),


        Center(
    child: Column(children: <Widget>[
    Container(
    margin: EdgeInsets.all(20),
    child: Table(
    defaultColumnWidth: FixedColumnWidth(120.0),
      border: TableBorder.all(
          color: Colors.black,
          style: BorderStyle.solid,
          width: 2),
      children: [
        TableRow( children: [
          Column(children:[Text('Website', style: TextStyle(fontSize: 20.0))]),
          Column(children:[Text('Tutorial', style: TextStyle(fontSize: 20.0))]),
          Column(children:[Text('Review', style: TextStyle(fontSize: 20.0))]),
        ]),
        TableRow( children: [
          Column(children:[Text('Javatpoint')]),
          Column(children:[Text('Flutter')]),
          Column(children:[Text('5*')]),
        ]),
        TableRow( children: [
          Column(children:[Text('Javatpoint')]),
          Column(children:[Text('MySQL')]),
          Column(children:[Text('5*')]),
        ]),
        TableRow( children: [
          Column(children:[Text('Javatpoint')]),
          Column(children:[Text('ReactJS')]),
          Column(children:[Text('5*')]),
        ]),
      ],
    ),
    ),
    ])
    )
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


