import 'package:fct_irs/widget/button_widget.dart';
import 'package:fct_irs/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:fct_irs/main.dart';

void main() {
  runApp(MaterialApp(
    home: Register(),
  ));
}

//Login Starts
class Register extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Register> {
  TextEditingController tinController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  String errorText = '';
  String date = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('FCT-IRS'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    )
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextField(
                    controller: dateController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Date of Incorporation or Date of Birth',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: tinController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'TIN',
                    ),
                  ),
                ),
                Container(
                    height: 50,
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('continue'),
                      //call the API for the login logic
                      onPressed: () {
                        print('Date: ${dateController.text}');
                        print('TIN: ${tinController.text}');
                      },
                    )
                ),
              ],
            )
        )
    );
  }
} //Login Ends
