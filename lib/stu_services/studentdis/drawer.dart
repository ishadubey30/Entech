import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sih_finals/screens/homepage.dart';
import 'package:sih_finals/screens/sign_in.dart';
import 'package:sih_finals/stu_services/studentdis/screens/services_screen.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      child: Drawer(
        child: Container(
          color: Color.fromARGB(255, 159, 198, 216),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => services_screen()));
                },
                leading: const Icon(
                  CupertinoIcons.tag_fill,
                  color: Colors.black87,
                ),
                title: const Text(
                  'Services',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              ListTile(
                leading: const Icon(
                  CupertinoIcons.home,
                  color: Colors.black87,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                onTap: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.black87,
                ),
                title: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                onTap: () async {
                  FirebaseAuth.instance.signOut().then(
                    (value) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()));
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
