import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sih_finals/screens/homepage.dart';
import 'drawer.dart';
import 'statelevel.dart';
import 'private.dart';
import 'nationallevel.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage_Ananya extends StatelessWidget {
  final style = TextStyle(color: Colors.black, fontSize: 23);
  final linestyle =
      TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        drawer: NavigationDrawerWidget_Ananya(),
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
                            'https://assets8.lottiefiles.com/private_files/lf30_g0us1yjd.json'),
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
                  child: Text("Welcome to Choice Filling",
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
                                    builder: (context) =>
                                        NationalCounselling()));
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
                                                    'https://ananyapic.s3.ap-south-1.amazonaws.com/ananya/admission.png'),
                                                fit: BoxFit.fill),
                                            border: Border.all(
                                                width: 1, color: Colors.black),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                    ),
                                    Text(
                                      'National Counselling',
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
                                    builder: (context) => StateCounselling()));
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
                                                  'https://ananyapic.s3.ap-south-1.amazonaws.com/ananya/tamil.png'),
                                              fit: BoxFit.fill),
                                          border: Border.all(
                                              width: 1, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                  Text(
                                    'State Counselling',
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
                                    builder: (context) =>
                                        PrivateCounselling()));
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
                                                  'https://ananyapic.s3.ap-south-1.amazonaws.com/ananya/college+dekho.png'),
                                              fit: BoxFit.fill),
                                          border: Border.all(
                                              width: 1, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                  Text(
                                    'Private Counsellling',
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
                    'You will be provided with different options for national counselling.'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Text('Different options are provided for choice filling'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('It includes six engineering branches.'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'You will be provided with options like IITs, AKTU, Anna University etc.'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Online Counselling becomes easy with ENTECH '),
              )
            ])),
      );
}
