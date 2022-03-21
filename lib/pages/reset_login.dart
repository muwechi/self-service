import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ResetLogin(),
  ));
}

//Reset Login Starts
class ResetLogin extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ResetLogin> {
  TextEditingController dateController = TextEditingController();
  TextEditingController tinController = TextEditingController();
  String password = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text('FCT-IRS'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Resend Login Details',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Please enter your credentials to resend your login details',
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: dateController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Date of Incorporation or Date of Birth',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    controller: tinController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'TIN',
                    ),
                  ),
                ),
                Container(
                    height: 50,
                    margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: const Text('Send Email'),
                      //call the API for the login logic
                      onPressed: () {
                        print('Date of Birth: ${dateController.text}');
                        print('TIN: ${password}');
                      },
                    )),
              ],
            )));
  }
} //Reset Login Ends
