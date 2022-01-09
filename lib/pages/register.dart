import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fct_irs/widget/navigation_drawer_widget.dart';

class Register extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: const Text('FCT-IRS'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Self Service',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'Date of Incorporation or Date of Birth',
                  ),
                  onTap: () {

                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    //border: OutlineInputBorder(),
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
                    child: const Text('Continue'),
                    onPressed: () {
                      print(nameController.text);
                      print(passwordController.text);
                    },
                  )),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Register(),
                  ));
                  //forgot password screen
                },
                textColor: Colors.green,
                child: const Text('Click here to reset and resend login details>>'),
              ),
            ],
          ))
  );

}