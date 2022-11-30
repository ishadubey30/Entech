import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:sih_finals/counselling/lib/home.dart';
import 'package:sih_finals/edu_content/educont/home.dart';
import 'package:sih_finals/exam_form/examform/chatbot.dart';
import 'package:sih_finals/exam_form/examform/home_screen.dart';
import 'package:sih_finals/patent/homepage.dart';

import 'package:sih_finals/screens/contact.dart';
import 'package:sih_finals/screens/feedback.dart';

import 'package:sih_finals/screens/homepage.dart';
import 'package:sih_finals/screens/myadmitcards.dart';

import 'package:sih_finals/screens/payment.dart';
import 'package:sih_finals/screens/privacypolicy.dart';
import 'package:sih_finals/screens/resetPass.dart';
import 'package:sih_finals/screens/security_screen.dart';
import 'package:sih_finals/screens/sign_in.dart';
import 'package:sih_finals/screens/view_profile.dart';
import 'package:sih_finals/stu_services/studentdis/screens/services_screen.dart';
import 'package:sih_finals/vid_train/vid_train/vid_train/home.dart';
//import 'package:sih_finals/services/googleSign.dart';

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
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue.shade600),
              margin: EdgeInsets.zero,
              accountName: null,
              accountEmail: Text(
                "${FirebaseAuth.instance.currentUser!.email}",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 10,
                  shadowColor: Colors.blue.shade400,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.transparent,
                      width: 6,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 5)),
                      Text(
                        "Entech Soothe",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      ListTile(
                        title: const Text('Exam Forms'),
                        leading:
                            Icon(CupertinoIcons.doc_chart, color: Colors.black),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage_Ar()));
                        },
                      ),
                      ListTile(
                        title: const Text('Counselling'),
                        leading:
                            Icon(CupertinoIcons.person_3, color: Colors.black),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage_Ananya()));
                        },
                      ),
                      ListTile(
                        title: const Text('Patent Grants'),
                        leading: Icon(Icons.fact_check_outlined,
                            color: Colors.black),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      HomePage_Mridul())); //afsha Home page
                        },
                      ),
                      ListTile(
                        title: const Text('Security Tips'),
                        leading: Icon(CupertinoIcons.shield_slash,
                            color: Colors.black),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      security_screen())); //security tips
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.blue.shade400,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.transparent,
                      width: 6,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 5)),
                      Text(
                        "Entech Facet",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      ListTile(
                        title: const Text('Services'),
                        leading:
                            Icon(CupertinoIcons.plus_app, color: Colors.black),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => services_screen()));
                        },
                      ),
                      ListTile(
                        title: const Text('Video Trainings'),
                        leading: Icon(CupertinoIcons.play_rectangle,
                            color: Colors.black),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage_Arnav()));
                        },
                      ),
                      ListTile(
                        title: const Text('Educational Content'),
                        leading: Icon(CupertinoIcons.book_circle,
                            color: Colors.black),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AfshaHomePage())); //afsha Home page
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.blue.shade400,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.transparent,
                      width: 6,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 5)),
                      Text(
                        "Entech Support",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
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
                        title: const Text('Privacy Policy'),
                        leading: Icon(Icons.policy, color: Colors.black),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HTMLtoWidget()));
                        },
                      ),
                      ListTile(
                        title: const Text('Feedback'),
                        leading:
                            Icon(Icons.feedback_outlined, color: Colors.black),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => feedback()));
                        },
                      ),
                      ListTile(
                        title: const Text('Contact Us'),
                        leading: Icon(CupertinoIcons.chat_bubble_2,
                            color: Colors.black),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Contact()));
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.blue.shade400,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.transparent,
                      width: 6,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 5)),
                      Text(
                        "Settings",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      ListTile(
                        onTap: () {
                          // Navigator.of(context)
                          //     .pushReplacementNamed('');
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MyAdmitCards(userId!)));
                        },
                        leading: const Icon(CupertinoIcons.news,
                            color: Colors.black),
                        title: const Text(
                          'My Admit Cards ',
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          // Navigator.of(context)
                          //     .pushReplacementNamed('');
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  GetUserName(userId!)));
                        },
                        leading: const Icon(CupertinoIcons.person,
                            color: Colors.black),
                        title: const Text(
                          'My Profile ',
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          // Navigator.of(context)
                          //     .pushReplacementNamed('');
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => ResetPass()));
                        },
                        leading: const Icon(CupertinoIcons.lock_rotation,
                            color: Colors.black),
                        title: const Text(
                          'Reset Password ',
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
                            (value) async {
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                              prefs.remove('email');
                              prefs.remove('pass');
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
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
