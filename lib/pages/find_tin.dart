import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:fct_irs/model/user_model.dart';

void main() {
  runApp(const MaterialApp(
    home: FindTin(),
  ));
}

//Find TIN Starts
class FindTin extends StatefulWidget {
  const FindTin({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<FindTin> {
  final apiUrl = "http://fcttaxportal.fctirs.gov.ng/api/TIN";

  // getUserData() async {
  //   var response = await get(Uri.parse(apiUrl));
  //   print("Response "+ response.body.toString());
  //   var jsonData = jsonDecode(response.body);
  //   List<User> users = [];
  //   for(var u in jsonData){
  //     User user = User(u["tin"], u["name"], u["email"]);
  //     users.add(user);
  //   }
  //   print(users.length);
  //   return users;
  // }

  Future postData() async {
    final String date = dateController.text;
    final String number = numberController.text;

    try {
      final response =
          await post(Uri.parse(apiUrl), body: {"DOB": date, "BVN": number});
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.

        return UserModel.fromJson(jsonDecode(response.body));
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('Failed to load album');
      }

      //print(response.body);
    } catch (er) {
      NetworkImageLoadException;
    }
  }

  UserModel user = UserModel();
  Future getUser() async {
    user = await postData();
    setState(() {});
  }

  TextEditingController dateController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController tinController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  String tin = '1234567890';
  String name = 'Moses Chukwuemeka Uwechi';
  String email = 'uwechimoses@gmail.com';
  String errorText = '';
  String date = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
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
                      'Search TIN ',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Please enter your credentials to search for your TIN.',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    )),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: TextField(
                    controller: dateController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Date of Incorporation or Date of Birth:',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: numberController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'BVN/NIN/Phone/BN Number:',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: tinController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'TIN Number:',
                      enabled: false,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name:',
                      enabled: false,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email:',
                      enabled: false,
                    ),
                  ),
                ),
                // Container(
                //   decoration: BoxDecoration(
                //     border: Border.all(),
                //   ),
                //   padding: const EdgeInsets.all(10),
                //   child: Text(user.tIN?? ""),
                // ),
                // Container(
                //   padding: const EdgeInsets.all(10),
                //   child: Text(user.firstname?? ""),
                // ),
                // Container(
                //   padding: const EdgeInsets.all(10),
                //   child: Text(user.email?? ""),
                // ),
                Container(
                    height: 50,
                    margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.green,
                        child: const Text('Search TIN'),
                        //call the API for the login logic
                        onPressed: () async {
                          postData();
                          await getUser();
                          if (user.status == "Not Found") {
                            print('Record Not Found');
                            setState(() {});
                          } else {
                            tinController.text = user.tIN ?? "";
                            nameController.text = user.firstname ?? "";
                            emailController.text = user.email ?? "";
                          }
                          // tinController.text = user.tIN?? "";
                          // nameController.text = user.firstname?? "";
                          // emailController.text = user.email?? "";
                          // if(dateController.text.isEmpty || numberController.text.isEmpty){
                          //   print('Please Enter Your Credentials');
                          // }if(user.status == "Not Found"){
                          //   print('Record Not Found');
                          // }else{
                          //   tinController.text = user.tIN?? "";
                          //   nameController.text = user.firstname?? "";
                          //   emailController.text = user.email?? "";
                          // }
                        })),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Please enter your credentials to search for your TIN.',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    )),
              ],
            )));
  }
} //Find TIN Ends

