import 'package:nms_productivity_portal/views/Dashboard.dart';
import 'package:nms_productivity_portal/views/Report.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nms_productivity_portal/views/signin_page.dart';
import 'package:nms_productivity_portal/views/bottom_nav_bar.dart';
import 'package:date_field/date_field.dart';

int _selectedPageIndex = 0;

var _pages = [
  Report(),
  AddActivity(),
];

class Contact {

  Contact({this.id,this.user,this.mandays,this.activities,this.project});

  int id;
  String user;
  String mandays;
  String activities;
  String project;
}

class AddActivity extends StatefulWidget {
  @override
  _AddActivityState createState() => _AddActivityState();
}
class _AddActivityState extends State<AddActivity> {
  final _formKey = GlobalKey<FormState>();
  DateTime selectedDate;


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
                    _contacts[index].activities.toUpperCase(),
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                       children:[
                         Text(_contacts[index].project),
                         Text(_contacts[index].user),
                         Text(_contacts[index].mandays),
                  ]),
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
  child: SingleChildScrollView(
    child: Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: 'Activities/Operational Supports'),
            validator: (val) =>
            (val.length == 0 ? 'This field is mandatory' : null),
            onSaved: (val) => setState(() => _contact.activities = val),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          ),
          TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: 'Project Name'),
            validator: (val) =>
            val.length == 0 ? 'This field is mandatory' : null,
            onSaved: (val) => setState(() => _contact.project = val),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          ),
          TextFormField(
            decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: 'User/Customer(s)'),
            validator: (val) =>
            val.length == 0 ? 'This field is mandatory' : null,
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          ),
          Form(
            child: Column(
              children: [
                DateTimeFormField(
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.black45),
                    errorStyle: TextStyle(color: Colors.redAccent),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.event_note),
                    labelText: 'Start Date',
                  ),
                  autovalidateMode: AutovalidateMode.always,
                  validator: (e) =>
                  (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                  onDateSelected: (DateTime value) {
                    print(value);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                ),
                DateTimeFormField(
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.black45),
                    errorStyle: TextStyle(color: Colors.redAccent),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.event_note),
                    labelText: 'End Date',
                  ),
                  autovalidateMode: AutovalidateMode.always,
                  validator: (e) =>
                  (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                  onDateSelected: (DateTime value) {
                    print(value);
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed:()async {
                var form = _formKey.currentState;
                if (form.validate()) {
                  form.save();
                  print('''
    Activities/Operational Supports: ${_contact.activities}
    Project Name: ${_contact.project}
    User/Customer(s) : ${_contact.user}
    Man Day's : ${_contact.mandays}
    ''');
                  _contacts.add(Contact(id:null,activities:_contact.activities,project:_contact.project,user:_contact.user,mandays:_contact.mandays));
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
  ));
}