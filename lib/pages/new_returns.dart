import 'package:fct_irs/pages/file_return.dart';
import 'package:fct_irs/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: NewReturns(),
  ));
}

//Login Starts
class NewReturns extends StatefulWidget {
  const NewReturns({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<NewReturns> {
  TextEditingController dateController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  String date = '';
  String year = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavigationDrawerWidget(),
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
                      'New Returns',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: dateController,
                    onChanged: (value) => setState(() => this.date = value),
                    onSubmitted: (value) =>
                        setState(() => this.date = value),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'AssessmentDate',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: yearController,
                    onChanged: (value) => setState(() => this.year = value),
                    onSubmitted: (value) =>
                        setState(() => this.year = value),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'AssessmentYear*',
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
                      child: const Text('Generate Returns Ref. Number'),
                      //call the API for the retrieve eTCC logic
                      onPressed: () {
                        // if(dateController.text.isEmpty || yearController.text.isEmpty) {
                        //   print('Date and Year is required');
                        // } else {
                        //   print('Date: ${date}');
                        //   print('Year: ${year}');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const FileReturn()));
                        // }
                      },
                    )),
              ],
            )));
  }
} // Retrieve eTCC Ends
