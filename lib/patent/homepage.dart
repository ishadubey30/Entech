import 'package:flutter/material.dart';
import 'package:sih_finals/patent/MainPage.dart';
import 'package:sih_finals/patent/viewpdf.dart';

import 'package:sih_finals/screens/feedback.dart';

import '../screens/contact.dart';
import '../screens/privacypolicy.dart';

class HomePage_Mridul extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upload Files"),
      ),
      drawer: Drawer(
          child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Mridul Srivastava"),
            accountEmail: Text("mridulsrivastava6969@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.deepPurpleAccent,
              child: Text(
                "MS",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.newspaper),
            title: const Text("View PDF"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ViewPDF()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.newspaper),
            title: const Text("Privacy Policy"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HTMLtoWidget()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text("Contact us"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Contact()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.feedback),
            title: const Text("Feedback"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => feedback()));
            },
          ),
        ],
      )),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
            ),
            ElevatedButton(
              child: const Text("Upload PDF"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
            ),
          ]),
    );
  }
}
