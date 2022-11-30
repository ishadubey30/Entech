import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sih_finals/exam_form/examform/exam_screen.dart';

import 'package:sih_finals/screens/homepage.dart';
import 'package:sih_finals/screens/sign_in.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      child: Drawer(
        child: Container(
          color: Color.fromARGB(255, 240, 224, 198),
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEj2UAsThBkG5W9wId8SIQkCJQ3v9jAW7Y5399l5fzmKC7JOyM09LfIVSwQnv8xGB-gO_H05_vrVdbsF5BRD0RB3W_qcr-6r2xuJfuofDfiw7cYwCcvelWtuJz6L0Uz6daZ8n17_mY7EfW3cMH2z_V5aY7H1pmfcgJpSdUSJ5VdfhE6gTdfo5kATd0kx/s3508/Untitled-3.jpg"),
                      fit: BoxFit.cover),
                ),
                child: null,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => exam_screen()));
                },
                leading: const Icon(
                  CupertinoIcons.tag_fill,
                  color: Colors.black87,
                ),
                title: const Text(
                  'All Categories',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              ListTile(
                onTap: () {
                  // Navigator.of(context).pushReplacementNamed('/home_screen');
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => HomePage()));
                },
                leading: const Icon(
                  CupertinoIcons.tag_fill,
                  color: Colors.black87,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => SignInScreen()));
                },
                leading: const Icon(
                  CupertinoIcons.tag_fill,
                  color: Colors.black87,
                ),
                title: const Text(
                  'logout',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
