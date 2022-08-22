import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:fct_irs/model/user_model.dart';
void main() {
  runApp(const MaterialApp(
    home: FindTinReplica(),
  ));
}

//Find TIN Starts
class FindTinReplica extends StatefulWidget {
  const FindTinReplica({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<FindTinReplica> {
  final url = "http://10.128.58.140/api/TIN";
  //final url = "https://jsonplaceholder.typicode.co/users";

  getUserData() async {
    var response = await get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    List<User> users = [];

    for(var u in jsonData){
      User user = User(u["TIN"], u["firstname"], u["email"]);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  void postData() async {
    final String date = dateController.text;
    final String number = numberController.text;

    try {
      final response = await post(Uri.parse(url),
          body: {"TIN": "", "DOB": date, "BVN": number});

      print(response.body);
    } catch (er) {
      NetworkImageLoadException;
    }
  }

  TextEditingController dateController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController tinController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  String tin = '1234567890';
  String name = 'Musa Adeka';
  String email = 'musa@gmail.com';
  String errorText = '';
  String date = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: const Text('FCT-IRS'),
        ),
        body: Container(
          child: Card(
            child: FutureBuilder<List<User>>(
              future: getUserData(),
              builder: (context, snapshot) {
                if (snapshot.data == null) {
                  return Container(
                    child: Text("Loading"),
                  );
                }else{
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Column(
                            children: [
                              Text(snapshot.data![i].name),
                              Text(snapshot.data![i].email),
                              Text(snapshot.data![i].username),
                            ],
                          ),
                        );
                      });
                }
              },
            ),
          ),
        )
    );
  }
} //Find TIN Ends

class User {
  final String name, email, username;

  User(this.name, this.email, this.username);

}