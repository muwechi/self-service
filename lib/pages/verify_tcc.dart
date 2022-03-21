import 'package:fct_irs/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: VerifyTCC(),
  ));
}

//Login Starts
class VerifyTCC extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<VerifyTCC> {
  TextEditingController yearController = TextEditingController();
  TextEditingController tinController = TextEditingController();
  String year = '';
  String tin = '';

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
                      'eTCC',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: yearController,
                    onChanged: (value) => setState(() => this.year = value),
                    onSubmitted: (value) =>
                        setState(() => this.year = value),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Year*',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: tinController,
                    onChanged: (value) => setState(() => this.tin = value),
                    onSubmitted: (value) =>
                        setState(() => this.tin = value),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'TIN*',
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
                      child: Text('Retrieve'),
                      //call the API for the retrieve eTCC logic
                      onPressed: () {
                        if(yearController.text.isEmpty || tinController.text.isEmpty) {
                          print('Year and Date is required');
                        } else {
                          print('Year: ${year}');
                          print('TIN: ${tin}');
                        }
                      },
                    )),
              ],
            )));
  }
} // Retrieve eTCC Ends
