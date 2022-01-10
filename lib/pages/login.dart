import 'package:fct_irs/pages/register.dart';
import 'package:fct_irs/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:fct_irs/main.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

//Login Starts
class Login extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Login> {
  TextEditingController tinController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String errorText = '';
  String password = '';
  bool isPasswordVisible = false;

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
                      'Login',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: tinController,
                    validator: (value) {},
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'TIN',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    // validator: (value) {
                    //   if(passwordController.text.isEmpty){
                    //     return 'Password is Required';
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    controller: passwordController,
                    onChanged: (value) => setState(() => this.password = value),
                    onSubmitted: (value) =>
                        setState(() => this.password = value),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      //errorText: 'Password is wrong',
                      suffixIcon: IconButton(
                        icon: isPasswordVisible
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                        onPressed: () => setState(
                            () => isPasswordVisible = !isPasswordVisible),
                      ),
                    ),
                    obscureText: isPasswordVisible,
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  textColor: Colors.green,
                  child: Text('Click here to reset and resend login details>>'),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('Login'),
                      //call the API for the login logic
                      onPressed: () {
                        print('TIN: ${tinController.text}');
                        print('Password: ${password}');
                      },
                    )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text('Does not have account?'),
                    FlatButton(
                      textColor: Colors.green,
                      child: Text(
                        'Register',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Register()));
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
} //Login Ends
