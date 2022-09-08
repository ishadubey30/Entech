import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sih_finals/afsha/afsha_lib/home.dart';
import 'package:sih_finals/aman/aman_lib/screens/services_screen.dart';
import 'package:sih_finals/ananya/lib/home.dart';

import 'package:sih_finals/arhma/Arhma_lib/chatbot.dart';
import 'package:sih_finals/arhma/Arhma_lib/exam_screen.dart';
import 'package:sih_finals/arhma/Arhma_lib/home_screen.dart';
import 'package:sih_finals/arnav/Arnav-main%20(2)/Arnav-main/home.dart';

import 'package:sih_finals/screens/homepage.dart';

import 'package:sih_finals/screens/payment.dart';
import 'package:sih_finals/screens/security_screen.dart';
import 'package:sih_finals/screens/sign_in.dart';
import 'package:sih_finals/screens/view_profile.dart';
import 'package:sih_finals/services/googleSign.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final user = FirebaseAuth.instance.currentUser;
  late String? userId = user!.uid;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 240, 224, 198),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black54),
              margin: EdgeInsets.zero,
              accountName: null,
              accountEmail: Text("${FirebaseAuth.instance.currentUser!.email}"),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: const Text('Home'),
                  leading: Icon(CupertinoIcons.home, color: Colors.black),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
                // ListTile(
                //   title: const Text('Counselling'),
                //   leading: Icon(CupertinoIcons.person_3, color: Colors.black),
                //   onTap: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => MyDrawer_Ananya()));
                //   },
                // ),
                ListTile(
                  title: const Text('Exam Forms'),
                  leading: Icon(CupertinoIcons.doc_chart, color: Colors.black),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage_Ar()));
                  },
                ),
                ListTile(
                  title: const Text('Counselling'),
                  leading: Icon(CupertinoIcons.person_3, color: Colors.black),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage_Ananya()));
                  },
                ),
                ListTile(
                  title: const Text('Security Tips'),
                  leading:
                      Icon(CupertinoIcons.shield_slash, color: Colors.black),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                security_screen())); //security tips
                  },
                ),
                ListTile(
                  title: const Text('Services'),
                  leading: Icon(CupertinoIcons.plus_app, color: Colors.black),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => services_screen()));
                  },
                ),
                ListTile(
                  title: const Text('Video Trainings'),
                  leading:
                      Icon(CupertinoIcons.play_rectangle, color: Colors.black),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage_Arnav()));
                  },
                ),
                ListTile(
                  title: const Text('Sponsored Content'),
                  leading:
                      Icon(CupertinoIcons.book_circle, color: Colors.black),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AfshaHomePage())); //afsha Home page
                  },
                ),

                ListTile(
                  onTap: () {
                    // Navigator.of(context)
                    //     .pushReplacementNamed('');
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => help()));
                  },
                  leading: const Icon(CupertinoIcons.question_circle,
                      color: Colors.black),
                  title: const Text(
                    'Help ',
                  ),
                ),
                ListTile(
                  title: const Text('Logout'),
                  leading: Icon(
                    Icons.logout_rounded,
                    color: Colors.black,
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
        ],
      ),
    );
  }
}
