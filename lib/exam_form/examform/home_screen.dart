import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sih_finals/screens/homepage.dart';
import './drawer.dart';
//import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'constants.dart';
import 'main.dart';
import 'formJmains.dart';
import 'form12.dart';
import 'formJadv.dart';
import 'formNeet.dart';
import 'formGate.dart';
import 'formNeetpg.dart';
import 'formUpsc.dart';
import 'formSsc.dart';

// class HomePage_Ar extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     _HomePageState();
//     throw UnimplementedError();
//   }
// }

// class _HomePageState extends State<HomePage_Ar>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//   @override
//   void initState() {
//     _animationController = AnimationController(vsync: this);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       drawer: MyDrawer(),
//       appBar: AppBar(
//           title: Text(
//            'EXAM FORMS',
//            style: TextStyle(color: Colors.black87),
//          )),

//       body: Center(
//         child: Container(
//           child: Lottie.network(
//               'https://assets9.lottiefiles.com/packages/lf20_qzasi9ko.json',
//               controller: _animationController, onLoaded: (animation) {
//             _animationController
//             ..duration = animation.duration
//             ..repeat(reverse: true);

//           }),
//         ),
//       ),
//     );
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }

//  class HomePage_Ar extends StatelessWidget {
//   final style = TextStyle(color: Colors.black, fontSize: 23);
//   final linestyle =
//       TextStyle(color: Colors.black, fontSize: 11, fontWeight: FontWeight.bold);
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         extendBodyBehindAppBar: true,
//         drawer: MyDrawer(),
//         appBar: AppBar(
//           title: Text(
//             'EXAM FORMS',
//             style: TextStyle(color: Colors.black87),
//           ),
//           foregroundColor: Colors.black,
//           backgroundColor: Colors.transparent,
//           shadowColor: Colors.transparent,
//           centerTitle: true,
//         ),
//         body: Container(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromARGB(255, 194, 233, 251),
//                 Color.fromARGB(255, 170, 201, 251),
//               ],
//               begin: Alignment.topRight,
//               end: Alignment.bottomLeft,
//             ),
//           ),
//           child: ListView(shrinkWrap: true, children: [
//             Padding(
//               padding: const EdgeInsets.all(56.0),
//             ),
//             Center(
//               child: Text("ENTECH",
//                   style: GoogleFonts.aladin(
//                     textStyle: style,
//                   )),
//             ),
//             Center(
//               child: Text("WE SERVE YOU BETTER",
//                   style: GoogleFonts.aladin(
//                     textStyle: style,
//                   )),
//             ),
//             Padding(padding: const EdgeInsets.all(10.0), child: Text("")),
//             Lottie.network(
//                 'https://assets9.lottiefiles.com/packages/lf20_qzasi9ko.json'),
//             Padding(padding: const EdgeInsets.all(15.0), child: Text("")),
//             Center(
//               child: Text("Form filling made easier with ENTECH",
//                   style: GoogleFonts.adamina(
//                     textStyle: linestyle,
//                   )),
//             ),
//           ]),
//         ),
//       );
// }
class HomePage_Ar extends StatefulWidget {
  @override
  State<HomePage_Ar> createState() => _HomePage_ArState();
}

class _HomePage_ArState extends State<HomePage_Ar> {
  final user = FirebaseAuth.instance.currentUser;
  late String? userId = user!.uid;
  final style = TextStyle(color: Colors.black, fontSize: 23);

  final linestyle =
      TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        drawer: MyDrawer(),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            )
          ],
          title: Text(
            '',
            style: TextStyle(color: Colors.black87),
          ),
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          centerTitle: true,
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 152, 231, 245),
                  Color.fromARGB(255, 241, 239, 235),
                  Color.fromARGB(255, 248, 184, 163),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: ListView(shrinkWrap: true, children: [
              Container(
                color: Color.fromRGBO(0, 0, 0, 0),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                  ),
                  Center(
                    child: Text("ENTECH",
                        style: GoogleFonts.abrilFatface(
                          textStyle: style,
                        )),
                  ),
                  Center(
                    child: Text("WE SERVE YOU BETTER!",
                        style: GoogleFonts.abrilFatface(
                          textStyle: style,
                        )),
                  ),
                  // Padding(padding: const EdgeInsets.all(10.0), child: Text("")),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0),
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.transparent),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Lottie.network(
                            'https://assets9.lottiefiles.com/packages/lf20_qzasi9ko.json'),
                      ),
                    ),
                  ),
                ]),
              ),
              Card(
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.black, width: 1)),
                child: Center(
                  child: Text("Form filling made easier with ENTECH",
                      style: GoogleFonts.acme(
                        textStyle: linestyle,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20)),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => JeeMain(userId!)));
                          },
                          child: AspectRatio(
                            aspectRatio: 2 / 2,
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                      color: Colors.black, width: 2)),
                              child: Container(
                                // decoration: BoxDecoration(
                                //     color: Colors.white,
                                //     border: Border.all(
                                //         width: 1, color: Colors.black),
                                //     borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      // child: AspectRatio(
                                      //   aspectRatio: 1 / 1,
                                      child: Container(
                                        height: 170,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://imgeng.jagran.com/images/2022/feb/jee-main-examination1644845985908.jpg'),
                                                fit: BoxFit.fill),
                                            border: Border.all(
                                                width: 1, color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                    ),
                                    Text(
                                      'JEE MAIN',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Gate(userId!)));
                          },
                          child: AspectRatio(
                            aspectRatio: 2 / 2,
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                      color: Colors.black, width: 2)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Container(
                                      height: 170,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://career.webindia123.com/career/options/images/gate.jpg'),
                                              fit: BoxFit.fill),
                                          border: Border.all(
                                              width: 1, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                  Text(
                                    'GATE',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NeetPG(userId!)));
                          },
                          child: AspectRatio(
                            aspectRatio: 2 / 2,
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                      color: Colors.black, width: 2)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    // child: AspectRatio(
                                    //   aspectRatio: 1 / 1,
                                    child: Container(
                                      height: 170,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://d2cyt36b7wnvt9.cloudfront.net/exams/wp-content/uploads/2021/11/04190223/NEET-PG.png'),
                                              fit: BoxFit.fill),
                                          border: Border.all(
                                              width: 1, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                  Text(
                                    'NEET PG',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sscCGL(userId!)));
                          },
                          child: AspectRatio(
                            aspectRatio: 2 / 2,
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                      color: Colors.black, width: 2)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Container(
                                      height: 170,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://www.collegesearch.in/upload/exam/190212122643_ssc-cgl-2019-CS.jpg'),
                                              fit: BoxFit.fill),
                                          border: Border.all(
                                              width: 1, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                  Text(
                                    'SSC CGL',
                                    style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UPSC(userId!)));
                          },
                          child: AspectRatio(
                            aspectRatio: 2 / 2,
                            child: Card(
                              color: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                      color: Colors.black, width: 2)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Container(
                                      height: 170,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://afsha.s3.ap-south-1.amazonaws.com/home+pic/upse.jpg'),
                                              fit: BoxFit.fill),
                                          border: Border.all(
                                              width: 1, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                  Text(
                                    'UPSC',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'WITH ENTECH IT IS EASIER',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    'Your information is safe with us and will not be used without your consent.'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Your form will be filled  only once.'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'To update your account,please choose my account option on home page.'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'ENTECH saves your time and relieves you from the chaotic process of form filling.'),
              ),
            ])),
      );
}
