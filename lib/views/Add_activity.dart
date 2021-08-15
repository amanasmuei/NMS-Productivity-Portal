import 'package:nms_productivity_portal/views/Dashboard.dart';
import 'package:nms_productivity_portal/views/Report.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nms_productivity_portal/views/signin_page.dart';
import 'package:nms_productivity_portal/views/bottom_nav_bar.dart';

int _selectedPageIndex = 0;

var _pages = [
  Report(),
  AddActivity(),
];

class Contact {

  Contact({this.id,this.user,this.mandays});

  int id;
  String user;
  String mandays;
}

class AddActivity extends StatefulWidget {
  @override
  _AddActivityState createState() => _AddActivityState();
}
class _AddActivityState extends State<AddActivity> {
  final _formKey = GlobalKey<FormState>();


  Contact _contact= Contact();
  List<Contact> _contacts = [];
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
      body:
      Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[_form(), _list()],
              ),
            ),
            /*child: Container(
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
                    Card(
                      child: new Column(
                          children: <Widget>[
                            Container(// background
                              color: Colors.blue,
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
                                        color: Colors.pinkAccent,
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
                                ],
                              ),
                            )
                          ]),
                    ),
                  ]),
            ),*/








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




    );


  }
  _list() => Expanded(
    child: Card(
      color: Colors.lightGreenAccent,
      margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
      child: Scrollbar(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.badge_outlined,
                    color: Colors.blue,
                    size: 40.0,
                  ),
                  title: Text(
                    _contacts[index].user.toUpperCase(),
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(_contacts[index].mandays),
                  onTap: () {},
                ),
                Divider(
                  height: 5.0,
                ),
              ],
            );
          },
          itemCount: _contacts.length,
        ),
      ),
    ),
  );


  _form() => Container(
    color: Colors.lightBlue,
    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
    child: Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder(),
            labelText: 'User/Customer(s)'),
            validator: (val) =>
            (val.length == 0 ? 'This field is mandatory' : null),
            onSaved: (val) => setState(() => _contact.user = val),
          ),
  Padding(
  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
  ),
          TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: 'Man Days'),
            validator: (val) =>
            val.length == 0 ? 'This field is mandatory' : null,
            onSaved: (val) => setState(() => _contact.mandays = val),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed:()async {
                  var form = _formKey.currentState;
                  if (form.validate()) {
                    form.save();
                    print('''
    User/Customer(s) : ${_contact.user}
    Man Day's : ${_contact.mandays}
    ''');
                    _contacts.add(Contact(id:null,user:_contact.user,mandays:_contact.mandays));
                    form.reset();
                  }
                },
              child: Text('Submit'),
              color: Colors.pink,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}


