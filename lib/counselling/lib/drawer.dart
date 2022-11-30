import 'package:flutter/material.dart';
import 'nationallevel.dart';
import 'private.dart';
import 'statelevel.dart';
import 'state.dart';

class NavigationDrawerWidget_Ananya extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final urlimage =
        "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj2UAsThBkG5W9wId8SIQkCJQ3v9jAW7Y5399l5fzmKC7JOyM09LfIVSwQnv8xGB-gO_H05_vrVdbsF5BRD0RB3W_qcr-6r2xuJfuofDfiw7cYwCcvelWtuJz6L0Uz6daZ8n17_mY7EfW3cMH2z_V5aY7H1pmfcgJpSdUSJ5VdfhE6gTdfo5kATd0kx/s3508/Untitled-3.jpg";
    return Drawer(
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
                  buildMenuItem(
                    text: 'National Counselling',
                    icon: Icons.article,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'State Counselling',
                    icon: Icons.article,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Private Counselling',
                    icon: Icons.article,
                    onClicked: () => selectedItem(context, 2),
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
    final hoverColor = Colors.transparent;

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
          builder: (context) => NationalCounselling(),
        ));
        break;

      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => stategrid(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PrivateCounselling(),
        ));
        break;
    }
  }
}
