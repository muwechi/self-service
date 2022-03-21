import 'package:fct_irs/pages/selectable_page.dart';
import 'package:fct_irs/widget/tabbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(FileReturnTable());
}

class FileReturnTable extends StatelessWidget {
  static final String title = 'Returns';

  const FileReturnTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.green),
    home: MainPage(),
  );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => TabBarWidget(
    title: 'Returns',
    tabs: const [
      Tab(icon: Icon(Icons.sort_by_alpha), text: 'Sortable'),
      Tab(icon: Icon(Icons.select_all), text: 'Selectable'),
      Tab(icon: Icon(Icons.edit), text: 'Editable'),
    ],
    children: [
      Container(),
      const SelectablePage(),
      Container(),
    ],
  );
}

