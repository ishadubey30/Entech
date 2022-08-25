import 'package:flutter/material.dart';
import 'package:sih_finals/arnav/Arnav-main/subjects/Engineering.dart';
import 'package:sih_finals/arnav/Arnav-main/subjects/railway.dart';
import 'package:sih_finals/arnav/Arnav-main/subjects/upsc.dart';
import 'package:sih_finals/screens/homepage.dart';
import 'package:sih_finals/screens/sign_in.dart';

import 'package:sih_finals/arnav/Arnav-main/subjects/Banking.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'Arnav Tiwari';
    final email = 'arnavtiwari515@gmail.com';

    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 194, 233, 251),
        child: ListView(
          children: <Widget>[
            buildHeader(
              name: name,
              email: email,
            ),
            SingleChildScrollView(
              child: Container(
                padding: padding,
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    Divider(color: Colors.white70),
                    const SizedBox(height: 24),
                    buildMenuItem(
                      text: 'Engineering',
                      icon: Icons.article,
                      onClicked: () => selectedItem(context, 0),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'UPSC',
                      icon: Icons.article,
                      onClicked: () => selectedItem(context, 1),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Banking',
                      icon: Icons.article,
                      onClicked: () => selectedItem(context, 2),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Railway',
                      icon: Icons.article,
                      onClicked: () => selectedItem(context, 3),
                    ),
                    const SizedBox(height: 24),
                    Divider(color: Colors.white70),
                    const SizedBox(height: 24),
                    buildMenuItem(
                      text: 'Home',
                      icon: Icons.house,
                      onClicked: () => selectedItem(context, 4),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Logout',
                      icon: Icons.logout_rounded,
                      onClicked: () => selectedItem(context, 5),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String name,
    required String email,
  }) =>
      InkWell(
        // onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 20)),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.black87),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.black87;
    final hoverColor = Color.fromARGB(221, 138, 137, 137);

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Engineering(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => UPSCPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => BankingPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => RailwayPage(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SignInScreen(),
        ));
        break;
    }
  }
}
