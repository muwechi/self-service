import 'package:fct_irs/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Dashboard(),
  ));
}

//Dashboard Starts
class Dashboard extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Dashboard> {
  String tin = '';
  String email = '';
  String name = '';
  String address = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: const Text('FCT-IRS'),
        ),

      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(children: [
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.green,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  //Icon(Icons.person, size: 40, color: Colors.white,),
                  Text("TIN:", style: TextStyle(color: Colors.white, fontSize: 20,),),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("6102369835", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                ],),
            ),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.green,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  //Icon(Icons.person, size: 40, color: Colors.white,),
                  Text("Name:", style: TextStyle(color: Colors.white, fontSize: 20,),),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("Musa Ibrahim Adeka", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                ],),
            ),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.green,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  //Icon(Icons.location_on, size: 40, color: Colors.white,),
                  Text("Tax Office:", style: TextStyle(color: Colors.white, fontSize: 20,),),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("GAR", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                ],),
            ),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.green,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  //Icon(Icons.email, size: 40, color: Colors.white,),
                  Text("Email:", style: TextStyle(color: Colors.white, fontSize: 20,),),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("something@mail.com", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                ],),
            ),
          ],
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 10),
          ),
        ),
      ),
        );
  }
} //Change Password Ends
