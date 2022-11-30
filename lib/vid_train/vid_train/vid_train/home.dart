import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sih_finals/screens/homepage.dart';
import 'package:sih_finals/vid_train/vid_train/vid_train/drawer/navigation_drawer_widget.dart';
import 'package:sih_finals/vid_train/vid_train/vid_train/subjects/Banking.dart';
import 'package:sih_finals/vid_train/vid_train/vid_train/subjects/Engineering.dart';
import 'package:sih_finals/vid_train/vid_train/vid_train/subjects/railway.dart';
import 'package:sih_finals/vid_train/vid_train/vid_train/subjects/upsc.dart';

class HomePage_Arnav extends StatelessWidget {
  final style = TextStyle(color: Colors.black, fontSize: 23);
  final linestyle =
      TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        drawer: NavigationDrawerWidget(),
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
                    child: Text("WE SERVE YOU BETTER",
                        style: GoogleFonts.abrilFatface(
                          textStyle: style,
                        )),
                  ),
                  // Padding(padding: const EdgeInsets.all(10.0), child: Text("")),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.transparent),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Lottie.network(
                            'https://assets5.lottiefiles.com/packages/lf20_uuq2vdhj.json'),
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
                  child: Text("Here is the guide to success!",
                      style: GoogleFonts.acme(
                        textStyle: linestyle,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                                    builder: (context) => Engineering()));
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
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Container(
                                        height: 170,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://afsha.s3.ap-south-1.amazonaws.com/home+pic/engineering.jpg'),
                                                fit: BoxFit.fill),
                                            border: Border.all(
                                                width: 1, color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                    ),
                                    Text(
                                      'Engineering',
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
                                    builder: (context) => RailwayPage()));
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
                                                  'https://sihtamil.s3.ap-south-1.amazonaws.com/1495783465236-logo.png'),
                                              fit: BoxFit.fill),
                                          border: Border.all(
                                              width: 1, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                  Text(
                                    'Railways',
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
                                    builder: (context) => BankingPage()));
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
                                                  'https://afsha.s3.ap-south-1.amazonaws.com/home+pic/banking.jpg'),
                                              fit: BoxFit.fill),
                                          border: Border.all(
                                              width: 1, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                  Text(
                                    'Banking',
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
                                    builder: (context) => UPSCPage()));
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
                  'WITH ENTECH',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    'You will be provided with study materials for every competetive exams.'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Study material of every subject is provied.'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('It includes all engineering branches.'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'You will be provided with study material for international exams like TOEFL,SAT,GRE,etc.'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Exams like UPSC are easy to crack with ENTECH '),
              )
            ])),
      );
}
