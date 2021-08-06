import 'package:nms_productivity_portal/Dashboard.dart';
import 'package:nms_productivity_portal/Report.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nms_productivity_portal/signin_page.dart';

int _selectedPageIndex = 0;

var _pages = [
  Report(),
  /*ProfilePage(),*/
];
class AddActivity extends StatefulWidget {
  @override
  _AddActivityState createState() => _AddActivityState();
}
class _AddActivityState extends State<AddActivity> {
  /*final GlobalKey<FormState> _formKey = GlobalKey();

  // This function is triggered when the "Save" button is pressed
  void _saveForm() {
    final bool isValid = _formKey.currentState.validate();
    if(isValid){
      print('Got a valid input');
      // And do something here
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TSFP Productivity Portal"),
        elevation: .1,
        backgroundColor: Colors.orangeAccent,
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

          Container(
          padding: new EdgeInsets.only(left: 16.0, bottom: 0.0, right: 16.0,),
          child: new Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          textDirection: TextDirection.rtl,
          children: [
          Text(
          'Compose New',
          style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
          fontWeight: FontWeight.bold
          ),
          ),
    SingleChildScrollView(
    child: Card(
         child: new Column(
             children: <Widget>[
     Container(// background
    color: Colors.blue[200],
     child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Activities/Operational Supports',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Project Name',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Users/Customers',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Man Days',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Description',
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
                color: Colors.blue[400],
              ),
              child: Text(
                "Submit",
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
          ),
        ],
      ),
     )
     ]),
          ),
          ),
          ]),

    ),








      /*Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value.trim().length < 3) {
                    return 'This field requires a minimum of 3 characters';
                  }

                  return null;
                },
                decoration: InputDecoration(
                    labelText: 'Enter Your Name',
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5))),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                  onPressed: _saveForm,
                  icon: Icon(Icons.save),
                  label: Text('Submit'))
            ],
          ),
        ),
      ),*/


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


