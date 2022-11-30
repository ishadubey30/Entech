import 'package:flutter/material.dart';

import 'package:sih_finals/screens/homepage.dart';
import 'package:sih_finals/screens/sign_in.dart';
import 'package:sih_finals/vid_train/vid_train/vid_train/subjects/Banking.dart';
import 'package:sih_finals/vid_train/vid_train/vid_train/subjects/Engineering.dart';
import 'package:sih_finals/vid_train/vid_train/vid_train/subjects/railway.dart';
import 'package:sih_finals/vid_train/vid_train/vid_train/subjects/upsc.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final urlimage =
        "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj2UAsThBkG5W9wId8SIQkCJQ3v9jAW7Y5399l5fzmKC7JOyM09LfIVSwQnv8xGB-gO_H05_vrVdbsF5BRD0RB3W_qcr-6r2xuJfuofDfiw7cYwCcvelWtuJz6L0Uz6daZ8n17_mY7EfW3cMH2z_V5aY7H1pmfcgJpSdUSJ5VdfhE6gTdfo5kATd0kx/s3508/Untitled-3.jpg";
    return Drawer(
      width: 230,
      elevation: 20,
      backgroundColor: Color.fromARGB(255, 240, 224, 198),
      child: ListView(
        children: <Widget>[
          buildHeader(
            urlimage: urlimage,
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
    );
  }

  Widget buildHeader({required String urlimage}) =>
      Container(child: Column(children: <Widget>[Image.network(urlimage)]));

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
