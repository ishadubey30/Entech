import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sih_finals/afsha/afsha_lib/home.dart';
import 'package:sih_finals/aman/aman_lib/screens/services_screen.dart';
import 'package:sih_finals/ananya/Ananya-main/drawer.dart';
import 'package:sih_finals/arhma/Arhma_lib/chatbot.dart';
import 'package:sih_finals/arhma/Arhma_lib/exam_screen.dart';
import 'package:sih_finals/arhma/Arhma_lib/home_screen.dart';
import 'package:sih_finals/arnav/Arnav-main/home.dart';
import 'package:sih_finals/screens/payment.dart';
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
      color: Colors.black12,
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
                  leading: Icon(CupertinoIcons.home),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Counselling'),
                  leading: Icon(CupertinoIcons.person_3),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyDrawer_Ananya()));
                  },
                ),
                ListTile(
                  title: const Text('Exam Forms'),
                  leading: Icon(CupertinoIcons.doc_chart),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage_Ar()));
                  },
                ),
                ListTile(
                  title: const Text('Services'),
                  leading: Icon(CupertinoIcons.plus_app),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => services_screen()));
                  },
                ),
                ListTile(
                  title: const Text('Video Trainings'),
                  leading: Icon(CupertinoIcons.play_rectangle),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainPage_Arnav()));
                  },
                ),
                ListTile(
                  title: const Text('Sponsored Content'),
                  leading: Icon(CupertinoIcons.book_circle),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AfshaHomePage())); //afsha Home page
                  },
                ),
                ListTile(
                  title: const Text('View Profile'),
                  leading: Icon(CupertinoIcons.profile_circled),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GetUserName(user!.uid)));
                  },
                ),
                ListTile(
                  onTap: () {
                    // Navigator.of(context)
                    //     .pushReplacementNamed('');
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => help()));
                  },
                  leading: const Icon(
                    CupertinoIcons.question_circle,
                  ),
                  title: const Text(
                    'Help ',
                  ),
                ),
                ListTile(
                  title: const Text('Logout'),
                  leading: Icon(Icons.logout_rounded),
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
