import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fct_irs/widget/navigation_drawer_widget.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(FindTin());
}

class FindTin extends StatelessWidget {
  static final String title = 'Find TIN';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primaryColor: Colors.green),
    home: MainPage(title: title),
  );

// @override
// Widget build(BuildContext context) => Scaffold(
//
//   drawer: NavigationDrawerWidget(),
//   appBar: AppBar(
//     title: Text('Find TIN'),
//     centerTitle: true,
//     backgroundColor: Colors.blue,
//   ),
// );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text(widget.title),
    ),
  );
}

