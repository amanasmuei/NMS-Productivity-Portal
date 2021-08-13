import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:nms_productivity_portal/Add_activity.dart';
import 'package:nms_productivity_portal/Dashboard_details.dart';
import 'package:nms_productivity_portal/PlaceholderWidget.dart';
import 'package:nms_productivity_portal/Report.dart';
import 'package:nms_productivity_portal/signin_page.dart';
import 'package:nms_productivity_portal/bottom_nav_bar.dart';


class Dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<Dashboard>{
  DateTime currentDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }




  @override
  Widget build(BuildContext context) {
    return initWidget();
  }


  Widget initWidget() {
    return Scaffold(
      body:
        SingleChildScrollView(
          child: Container(
            padding: new EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            alignment: Alignment.topCenter,
            child: new Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                textDirection: TextDirection.rtl,
                  children: <Widget>[
                    Text("Dashboard",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(currentDate.toString(),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold
                          ),),
                        IconButton(
                          icon: Icon(Icons.filter_alt),
                          onPressed: () => _selectDate(context),
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
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                Text("Overall Monthly",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  PopupMenuButton<String>(
                                    padding: EdgeInsets.only(left: 100),
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
                        Text("Title 1",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold
                          ),),

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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text("Overall Yearly",textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold
                                  ),),
                                PopupMenuButton<String>(
                                  padding: EdgeInsets.only(left: 100),
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
                        Text("Title 1",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold
                          ),),

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
                  Container(
                    padding: EdgeInsets.only( right: 16.0, top: 16.0),
                    child: Column(
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
                        ],

                    ),
                  ),


                ]),

          ),

        ),

    );

  }
}