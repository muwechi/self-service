import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fct_irs/pages/login.dart';
import 'package:fct_irs/pages/find_tin.dart';
import 'package:fct_irs/pages/register.dart';


class NavigationDrawerWidget extends StatelessWidget{
  final padding = EdgeInsets.symmetric(horizontal: 20);

  //Navigation Menu Items
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Material(
        color: Color.fromRGBO(0, 175, 0, 1),
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 48),
            buildMenuItem(
              text: 'Login',
              icon: Icons.login,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Register',
              icon: Icons.app_registration,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Find TIN',
              icon: Icons.search,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 24),
            Divider(color: Colors.white),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index){
      case 0:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Register(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => FindTin()
        ));
        break;
    }
  }
}