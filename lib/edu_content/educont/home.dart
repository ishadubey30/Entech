import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sih_finals/screens/homepage.dart';
import 'Engineering.dart';
import 'upsc.dart';
import 'Banking.dart';
import 'management.dart';
import 'intern.dart';
import 'navigation_drawer_widget.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class AfshaHomePage extends StatelessWidget {
  final style = TextStyle(color: Colors.black, fontSize: 23);
  final linestyle =
      TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
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
          elevation: 0.0,
          title: Text(
            '',
            style: TextStyle(color: Colors.black87),
          ),
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          centerTitle: true,
        ),
        drawer: NavigationDrawerWidget(),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Colors.blue.shade200),
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
                            'https://assets4.lottiefiles.com/packages/lf20_1a8dx7zj.json'),
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
                                    builder: (context) => EngineeringPage()));
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
                                    builder: (context) => ManagementPage()));
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
                                                  'https://afsha.s3.ap-south-1.amazonaws.com/home+pic/management.jpg'),
                                              fit: BoxFit.fill),
                                          border: Border.all(
                                              width: 1, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                  Text(
                                    'Management',
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
                                    builder: (context) => IntPage()));
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
                                                  'https://afsha.s3.ap-south-1.amazonaws.com/home+pic/int+exam.jpg'),
                                              fit: BoxFit.fill),
                                          border: Border.all(
                                              width: 1, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                  Text(
                                    'International Exams',
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
            ])),
      );
}
