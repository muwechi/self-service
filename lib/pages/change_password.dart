import 'package:fct_irs/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp(
    home: ChangePassword(),
  ));
}

//Change Password Starts
class ChangePassword extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ChangePassword> {
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  String newPassword = '';
  String confirmPassword = '';


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
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Change Password',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Please enter credentials to change your password',
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),

                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: oldPasswordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Old Password:*',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    controller: newPasswordController,
                    onChanged: (value) => setState(() => this.newPassword = value),
                    onSubmitted: (value) =>
                        setState(() => this.newPassword = value),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'New Password:*',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    controller: confirmPasswordController,
                    onChanged: (value) => setState(() => this.confirmPassword = value),
                    onSubmitted: (value) =>
                        setState(() => this.confirmPassword = value),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password:*',
                    ),
                  ),
                ),
                Container(
                    height: 50,
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('Change Password'),
                      //call the API for the login logic
                      onPressed: () {
                        print('Old Password: ${oldPasswordController.text}');
                        print('New Password: ${newPassword}');
                        print('Confirm Password: ${confirmPassword}');
                        //verify new password
                        if(newPassword == confirmPassword){
                          print('Password Changed');
                        }else{
                          print('Password did not match!');
                        }
                      },
                    )),
              ],
            )));
  }
} //Change Password Ends
