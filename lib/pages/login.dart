import 'package:fct_irs/pages/dashboard.dart';
import 'package:fct_irs/pages/register.dart';
import 'package:fct_irs/pages/reset_login.dart';
import 'package:flutter/material.dart';

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
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
                      'Login',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),

                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: tinController,
                    validator: (value) {},
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'TIN',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                      border: const OutlineInputBorder(),
                      labelText: 'Password',
                      //errorText: 'Password is wrong',
                      suffixIcon: IconButton(
                        icon: isPasswordVisible
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ResetLogin()));
                  },
                  textColor: Colors.green,
                  child: const Text('Click here to reset and resend login details>>'),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: const Text('Login'),
                      //call the API for the login logic
                      onPressed: () {
                        print('TIN: ${tinController.text}');
                        print('Password: ${password}');
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Dashboard()));
                      },
                    )),
                Container(
                    child: Row(
                  children: <Widget>[
                    const Text('Does not have account?'),
                    FlatButton(
                      textColor: Colors.green,
                      child: const Text(
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
