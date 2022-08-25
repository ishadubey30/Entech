import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sih_finals/screens/drawer.dart';
import 'package:sih_finals/screens/sign_in.dart';
import 'package:sih_finals/screens/view_profile.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser;
  late String? userId = user!.uid;

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 11, 60, 100),
        height: 55,
        items: [
          Icon(
            CupertinoIcons.home,
            size: 20,
          ),
          Icon(
            CupertinoIcons.person,
            size: 20,
          ),
          Icon(
            CupertinoIcons.bars,
            size: 20,
          ),
        ],
        index: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
      body: (index == 1)
          ? GetUserName(userId!)
          : (index == 0)
              ? Container(
                  child: Center(child: Text("Namaskar")),
                )
              : (index == 2)
                  ? MyDrawer()
                  : Container(),
    );
  }
}
