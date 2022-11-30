// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:sih_finals/Mridul/homepage.dart';
// import 'package:sih_finals/afsha/afsha_lib/home.dart';
// import 'package:sih_finals/aman/aman_lib/screens/services_screen.dart';
// import 'package:sih_finals/ananya/lib/home.dart';

// import 'package:sih_finals/arhma/Arhma_lib/chatbot.dart';
// import 'package:sih_finals/arhma/Arhma_lib/exam_screen.dart';
// import 'package:sih_finals/arhma/Arhma_lib/home_screen.dart';
// import 'package:sih_finals/arnav/Arnav-main%20(2)/Arnav-main/home.dart';
// import 'package:sih_finals/screens/contact.dart';
// import 'package:sih_finals/screens/feedback.dart';

// import 'package:sih_finals/screens/homepage.dart';

// import 'package:sih_finals/screens/payment.dart';
// import 'package:sih_finals/screens/privacypolicy.dart';
// import 'package:sih_finals/screens/resetPass.dart';
// import 'package:sih_finals/screens/security_screen.dart';
// import 'package:sih_finals/screens/sign_in.dart';
// import 'package:sih_finals/screens/view_profile.dart';
// import 'package:sih_finals/services/googleSign.dart';

// class Drawer extends StatefulWidget {
//   @override
//   State<Drawer> createState() => _MyDrawerState();
// }

// class _MyDrawerState extends State<Drawer> {
//   final user = FirebaseAuth.instance.currentUser;
//   late String? userId = user!.uid;
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Color(0xffffff),
//       child:ListView(
//        padding: EdgeInsets.all(12),
        
//       children:[
//         //Container(height: 35,)
//         //userTile(),
//         // divider(),
//         // colorTiles(),
//         // bwTiles(),
//       ],
//       ),
//     );
//     }
//       Widget userTile(){
//         String url="https://cdn.pixabay.com/photo/2016/11/18/23/38/child-1837375_1280.png";
//         return ListTile(
//           leading: CircleAvatar(backgroundImage:NetworkImage(url)),
//           title: Text("${FirebaseAuth.instance.currentUser!.email}",style:TextStyle(fontWeight: FontWeight.bold),),
//         );
//       }
//        Widget divider(){
//         return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Divider(
//             thickness: 1.5,
            
//           ),
//         );
//        }
//         Widget colorTiles(){
//           return Column(
//             children: [
//               colorTile(Icons.home)

//             ],
//           );
//         }
//         Widget colorTile(){
//            Widget leading: Container(
//               child: Icon(icon, color: color),
//               height: 50,
//               width: 50,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(18),
//                 color: color.withOpacity(0.09),
//                 ),
//             );
//             Widget title=Text("");
//             Widget Trailing(Icon.arr)

//           )
//         }  
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//           DrawerHeader(
//             padding: EdgeInsets.zero,
//             child: UserAccountsDrawerHeader(
//               decoration: BoxDecoration(color: Colors.black54),
//               margin: EdgeInsets.zero,
//               accountName: null,
//               accountEmail: Text("${FirebaseAuth.instance.currentUser!.email}"),
//             ),
//           ),
//           SingleChildScrollView(
//             child: Column(
//               children: [
//                 ListTile(
//                   title: const Text('Home'),
//                   leading: Icon(CupertinoIcons.home, color: Colors.black),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => HomePage()));
//                   },
//                 ),
//                 // ListTile(
//                 //   title: const Text('Counselling'),
//                 //   leading: Icon(CupertinoIcons.person_3, color: Colors.black),
//                 //   onTap: () {
//                 //     Navigator.push(
//                 //         context,
//                 //         MaterialPageRoute(
//                 //             builder: (context) => MyDrawer_Ananya()));
//                 //   },
//                 // ),
//                 ListTile(
//                   title: const Text('Exam Forms'),
//                   leading: Icon(CupertinoIcons.doc_chart, color: Colors.black),
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => HomePage_Ar()));
//                   },
//                 ),
//                 ListTile(
//                   title: const Text('Counselling'),
//                   leading: Icon(CupertinoIcons.person_3, color: Colors.black),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => HomePage_Ananya()));
//                   },
//                 ),
//                 ListTile(
//                   title: const Text('Patent Grants'),
//                   leading:
//                       Icon(CupertinoIcons.book_circle, color: Colors.black),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) =>
//                                 HomePage_Mridul())); //afsha Home page
//                   },
//                 ),
//                 ListTile(
//                   title: const Text('Security Tips'),
//                   leading:
//                       Icon(CupertinoIcons.shield_slash, color: Colors.black),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) =>
//                                 security_screen())); //security tips
//                   },
//                 ),

//                 ListTile(
//                   title: const Text('Services'),
//                   leading: Icon(CupertinoIcons.plus_app, color: Colors.black),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => services_screen()));
//                   },
//                 ),
//                 ListTile(
//                   title: const Text('Video Trainings'),
//                   leading:
//                       Icon(CupertinoIcons.play_rectangle, color: Colors.black),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => HomePage_Arnav()));
//                   },
//                 ),
//                 ListTile(
//                   title: const Text('Sponsored Content'),
//                   leading:
//                       Icon(CupertinoIcons.book_circle, color: Colors.black),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) =>
//                                 AfshaHomePage())); //afsha Home page
//                   },
//                 ),

//                 ListTile(
//                   onTap: () {
//                     // Navigator.of(context)
//                     //     .pushReplacementNamed('');
//                     Navigator.of(context).push(new MaterialPageRoute(
//                         builder: (BuildContext context) => help()));
//                   },
//                   leading: const Icon(CupertinoIcons.question_circle,
//                       color: Colors.black),
//                   title: const Text(
//                     'Help ',
//                   ),
//                 ),
//                 ListTile(
//                   title: const Text('Privacy Policy'),
//                   leading:
//                       Icon(CupertinoIcons.book_circle, color: Colors.black),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) =>
//                                 HTMLtoWidget())); //afsha Home page
//                   },
//                 ),
//                 ListTile(
//                   title: const Text('Feedback'),
//                   leading:
//                       Icon(CupertinoIcons.book_circle, color: Colors.black),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) =>
//                                 feedback())); //afsha Home page
//                   },
//                 ),
//                 ListTile(
//                   title: const Text('Contact Us'),
//                   leading:
//                       Icon(CupertinoIcons.book_circle, color: Colors.black),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => Contact())); //afsha Home page
//                   },
//                 ),
//                 ListTile(
//                   onTap: () {
//                     // Navigator.of(context)
//                     //     .pushReplacementNamed('');
//                     Navigator.of(context).push(new MaterialPageRoute(
//                         builder: (BuildContext context) =>
//                             GetUserName(userId!)));
//                   },
//                   leading:
//                       const Icon(CupertinoIcons.person, color: Colors.black),
//                   title: const Text(
//                     'My Profile ',
//                   ),
//                 ),
//                 ListTile(
//                   onTap: () {
//                     // Navigator.of(context)
//                     //     .pushReplacementNamed('');
//                     Navigator.of(context).push(new MaterialPageRoute(
//                         builder: (BuildContext context) => ResetPass()));
//                   },
//                   leading: const Icon(CupertinoIcons.lock_rotation,
//                       color: Colors.black),
//                   title: const Text(
//                     'Reset Password ',
//                   ),
//                 ),
//                 ListTile(
//                   title: const Text('Logout'),
//                   leading: Icon(
//                     Icons.logout_rounded,
//                     color: Colors.black,
//                   ),
//                   onTap: () async {
//                     FirebaseAuth.instance.signOut().then(
//                       (value) async {
//                         SharedPreferences prefs =
//                             await SharedPreferences.getInstance();
//                         prefs.remove('email');
//                         prefs.remove('pass');
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => SignInScreen()));
//                       },
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
