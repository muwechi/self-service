import 'package:fct_irs/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const FileReturn(),
    );
  }
}

class FileReturn extends StatefulWidget {
  const FileReturn({Key? key}) : super(key: key);

  @override
  _FileReturnState createState() => _FileReturnState();
}

class _FileReturnState extends State<FileReturn> {
  int _activeStepIndex = 0;
  ////////////////////////////////////////////////////////////////
  TextEditingController spouseName = TextEditingController();
  TextEditingController spouseDOB = TextEditingController();
  TextEditingController spouseAddress = TextEditingController();
  TextEditingController spouseRelationship = TextEditingController();
  TextEditingController spouseEmployer = TextEditingController();
  TextEditingController spouseOccupation = TextEditingController();
  TextEditingController childName = TextEditingController();
  TextEditingController childInstitute = TextEditingController();
  TextEditingController childIncome = TextEditingController();
  TextEditingController childDOB = TextEditingController();
  TextEditingController childInstAdd = TextEditingController();
  TextEditingController childFees = TextEditingController();
  TextEditingController incomeSource = TextEditingController();
  TextEditingController amount = TextEditingController();
  TextEditingController remark = TextEditingController();
  TextEditingController januaryAddress = TextEditingController();
  TextEditingController changedAddress = TextEditingController();
  TextEditingController servantName = TextEditingController();
  TextEditingController servantDOB = TextEditingController();
  TextEditingController servantAddress = TextEditingController();
  TextEditingController servantAmount = TextEditingController();
  TextEditingController dateOfPurchase = TextEditingController();
  TextEditingController vehicleCost = TextEditingController();
  TextEditingController vehicleBrand = TextEditingController();
  TextEditingController vehicleModel = TextEditingController();
  TextEditingController vehicleYear = TextEditingController();
  TextEditingController allowanceSource = TextEditingController();
  TextEditingController allowanceAmount = TextEditingController();
  TextEditingController allowanceRemark = TextEditingController();

  TextEditingController dateController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  String date = '';
  String year = '';

  List<Step> stepList() => [
        Step(
          state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 0,
          title: const Text('PART A: PERSONAL DETAILS'),
          content: Container(
            child: Column(
              children: <Widget>[
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "If Married, State Spouse's details:",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    )),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: TextField(
                    controller: spouseName,
                    onChanged: (value) => setState(() => this.date = value),
                    onSubmitted: (value) =>
                        setState(() => this.date = value),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name:',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: TextField(
                    controller: spouseDOB,
                    onChanged: (value) => setState(() => this.year = value),
                    onSubmitted: (value) =>
                        setState(() => this.year = value),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'DOB:*',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: TextField(
                    controller: spouseAddress,
                    onChanged: (value) => setState(() => this.date = value),
                    onSubmitted: (value) =>
                        setState(() => this.date = value),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Address:',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: TextField(
                    controller: spouseRelationship,
                    onChanged: (value) => setState(() => this.date = value),
                    onSubmitted: (value) =>
                        setState(() => this.date = value),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Relationship:',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: TextField(
                    controller: spouseEmployer,
                    onChanged: (value) => setState(() => this.date = value),
                    onSubmitted: (value) =>
                        setState(() => this.date = value),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Employer:',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: TextField(
                    controller: spouseOccupation,
                    onChanged: (value) => setState(() => this.date = value),
                    onSubmitted: (value) =>
                        setState(() => this.date = value),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Occupation:',
                    ),
                  ),
                ),
                /**************** Children's Details ******************/
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "Children's details:",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    )),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: TextField(
                    controller: childName,
                    onChanged: (value) => setState(() => this.date = value),
                    onSubmitted: (value) =>
                        setState(() => this.date = value),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name:',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: TextField(
                    controller: childInstitute,
                    onChanged: (value) => setState(() => this.year = value),
                    onSubmitted: (value) =>
                        setState(() => this.year = value),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Institution:*',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: TextField(
                    controller: childIncome,
                    onChanged: (value) => setState(() => this.date = value),
                    onSubmitted: (value) =>
                        setState(() => this.date = value),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Child Income on own right:*',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: TextField(
                    controller: childDOB,
                    onChanged: (value) => setState(() => this.date = value),
                    onSubmitted: (value) =>
                        setState(() => this.date = value),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'DOB:*',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: TextField(
                    controller: childInstAdd,
                    onChanged: (value) => setState(() => this.date = value),
                    onSubmitted: (value) =>
                        setState(() => this.date = value),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Institution Address:',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: TextField(
                    controller: childFees,
                    onChanged: (value) => setState(() => this.date = value),
                    onSubmitted: (value) =>
                        setState(() => this.date = value),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'School Fees:*',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Step(
            state: _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
            isActive: _activeStepIndex >= 1,
            title: const Text('PART B: STATEMENT OF INCOME FOR THE YEAR ENDED 31ST DECEMBER'),
            content: Container(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: TextField(
                      controller: incomeSource,
                      onChanged: (value) => setState(() => this.date = value),
                      onSubmitted: (value) =>
                          setState(() => this.date = value),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Income Sources:*',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: TextField(
                      controller: amount,
                      onChanged: (value) => setState(() => this.year = value),
                      onSubmitted: (value) =>
                          setState(() => this.year = value),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Amount Per Annum(₦):*',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: TextField(
                      controller: remark,
                      onChanged: (value) => setState(() => this.date = value),
                      onSubmitted: (value) =>
                          setState(() => this.date = value),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Remark:',
                      ),
                    ),
                  ),
                ],
              ),
            )
        ),
        Step(
        state: _activeStepIndex <= 2 ? StepState.editing : StepState.complete,
        isActive: _activeStepIndex >= 2,
        title: const Text('PART C: BENEFITS IN KIND'),
        content: Container(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 8,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                    "a: Residential Address",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  )),
              Container(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: januaryAddress,
                  onChanged: (value) => setState(() => this.date = value),
                  onSubmitted: (value) =>
                      setState(() => this.date = value),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '1. As at 1st January:',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: changedAddress,
                  onChanged: (value) => setState(() => this.year = value),
                  onSubmitted: (value) =>
                      setState(() => this.year = value),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Changes during the year:',
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                    "b. Name of Domestic Servants (e.g. Maids, Drivers, Gardener, Watchmen, Cooks, Stewards, Cleaners etc)",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  )),
              Container(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: servantName,
                  onChanged: (value) => setState(() => this.date = value),
                  onSubmitted: (value) =>
                      setState(() => this.date = value),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name:',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: servantDOB,
                  onChanged: (value) => setState(() => this.date = value),
                  onSubmitted: (value) =>
                      setState(() => this.date = value),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'DOB:',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: servantAddress,
                  onChanged: (value) => setState(() => this.date = value),
                  onSubmitted: (value) =>
                      setState(() => this.date = value),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Address:*',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: servantAmount,
                  onChanged: (value) => setState(() => this.date = value),
                  onSubmitted: (value) =>
                      setState(() => this.date = value),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Amount:*',
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                    "c. Vehicle(s)",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  )
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: dateOfPurchase,
                  onChanged: (value) => setState(() => this.date = value),
                  onSubmitted: (value) =>
                      setState(() => this.date = value),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Date of Purchase:*',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: vehicleCost,
                  onChanged: (value) => setState(() => this.date = value),
                  onSubmitted: (value) =>
                      setState(() => this.date = value),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Cost:',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: vehicleBrand,
                  onChanged: (value) => setState(() => this.date = value),
                  onSubmitted: (value) =>
                      setState(() => this.date = value),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Brand:',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: vehicleModel,
                  onChanged: (value) => setState(() => this.date = value),
                  onSubmitted: (value) =>
                      setState(() => this.date = value),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Model:',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: vehicleYear,
                  onChanged: (value) => setState(() => this.date = value),
                  onSubmitted: (value) =>
                      setState(() => this.date = value),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Year:*',
                  ),
                ),
              ),
            ],
          ),
        )
    ),
        Step(
        state: _activeStepIndex <= 3 ? StepState.editing : StepState.complete,
        isActive: _activeStepIndex >= 3,
        title: const Text('PART D: ALLOWANCES FOR LIFE ASSURANCE, '
            'GRATUITIES, NHIS AND PENSION CONTRIBUTION (100% of sum paid)'),
        content: Container(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 8,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: allowanceSource,
                  onChanged: (value) => setState(() => this.date = value),
                  onSubmitted: (value) =>
                      setState(() => this.date = value),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contribution Source:*',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: allowanceAmount,
                  onChanged: (value) => setState(() => this.year = value),
                  onSubmitted: (value) =>
                      setState(() => this.year = value),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Amount Per Annum(₦):*',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: allowanceRemark,
                  onChanged: (value) => setState(() => this.date = value),
                  onSubmitted: (value) =>
                      setState(() => this.date = value),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Remark:',
                  ),
                ),
              ),
            ],
          ),
        )
    ),
        Step(
            state: StepState.complete,
            isActive: _activeStepIndex >= 4,
            title: const Text('PENALTY AND DECLARATION'),
            content: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'PENALTY FOR DEFAULT',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "Please note that in accordance with the relevant laws, "
                          "making false statements and returns or unlawful refusal/neglect "
                          "to pay accurate tax will attract fine or imprisonment or both.",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    )
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'DECLARATION (MUST BE CHECKED)',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      "I hereby declare that the information supplied in this form to the best"
                          " of my knowledge and belief contains correct and complete statement of"
                          " the amount of income from all sources.I understand that I may have to pay "
                          "financial penalties and face prosecution if I give false information *",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    )
                ),
              ],
            )))
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: const Text('File Tax Returns'),
      ),
      body: Stepper(
        type: StepperType.vertical,
        currentStep: _activeStepIndex,
        steps: stepList(),
        onStepContinue: () {
          if(_activeStepIndex < (stepList().length - 1)) {
            setState(() {
              _activeStepIndex += 1;
            });
          } else {
            print('Submited');
            //Send Data to Server
          }
        },
        onStepCancel: () {
          if (_activeStepIndex == 0) {
            return;
          }
          setState(() {
            _activeStepIndex -= 1;
          });
        },
        // controlsBuilder: (context, {onStepContinue, onStepCancel}) {
        //   return Container(
        //     margin: EdgeInsets.only(top: 50),
        //     child: Row(
        //       children: [
        //         Expanded(
        //           child: ElevatedButton(
        //             child: Text('NEXT'),
        //             onPressed: onStepContinue,
        //           ),
        //         ),
        //         const SizedBox(width: 12),
        //         Expanded(
        //             child: ElevatedButton(
        //               child: Text('BACK'),
        //               onPressed: onStepCancel,
        //             )
        //         )
        //       ],
        //     ),
        //   ),
        // },
        onStepTapped: (int index) {
          setState(() {
            _activeStepIndex = index;
          });
        },
      ),
    );
  }
}
