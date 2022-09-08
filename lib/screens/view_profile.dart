import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sih_finals/screens/homepage.dart';

class GetUserName extends StatefulWidget {
  final String documentId;

  GetUserName(this.documentId);

  @override
  State<GetUserName> createState() => _GetUserNameState();
}

class _GetUserNameState extends State<GetUserName> {
  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return Scaffold(
      // backgroundColor: Colors.transparent,
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
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.width * 0.3, 20, 0),
          child: FutureBuilder<DocumentSnapshot>(
            future: users.doc(widget.documentId).get(),
            builder: (BuildContext context,
                AsyncSnapshot<DocumentSnapshot> snapshot) {
              if (snapshot.hasError) {
                return Text("Something went wrong");
              }

              if (snapshot.hasData && !snapshot.data!.exists) {
                return Text("Document does not exist");
              }

              if (snapshot.connectionState == ConnectionState.done) {
                Map<String, dynamic> data =
                    snapshot.data!.data() as Map<String, dynamic>;
                return Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: BorderSide(color: Colors.black, width: 1)),
                          color: Colors.transparent,
                          child: ListTile(
                            title: Text(
                              "Name:  " + data['name'],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: BorderSide(color: Colors.black, width: 1)),
                          color: Colors.transparent,
                          child: ListTile(
                            title: Text(
                              "Email:  " + data['email'],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: BorderSide(color: Colors.black, width: 1)),
                          color: Colors.transparent,
                          child: ListTile(
                            title: Text(
                              "Aadhar Number:  " +
                                  (data['aadhar details']).toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: BorderSide(color: Colors.black, width: 1)),
                          color: Colors.transparent,
                          child: ListTile(
                            title: Text(
                              "HSC Roll Number:  " +
                                  (data['hsc roll number']).toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: BorderSide(color: Colors.black, width: 1)),
                          color: Colors.transparent,
                          child: ListTile(
                            title: Text(
                              "Grad Roll Number:  " +
                                  (data['grad roll number']).toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        // ListTile(
                        //   title: Text("Submit"),
                        //   onTap: () {
                        //     addformData(data['email']).then((value) {
                        //       if (value) {
                        //         const snackBar = SnackBar(
                        //             content: Text("Filled Successfully"));
                        //         ScaffoldMessenger.of(context)
                        //             .showSnackBar(snackBar);
                        //       } else {
                        //         const snackBar = SnackBar(
                        //             content: Text(" Already Filled"));
                        //         ScaffoldMessenger.of(context)
                        //             .showSnackBar(snackBar);
                        //       }
                        //     });
                        //   },
                        // ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(79, 5, 79, 5),
                          child: Card(
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                side:
                                    BorderSide(color: Colors.black, width: 1)),
                            color: Colors.black.withOpacity(0.9),
                            child: ListTile(
                              title: const Text(
                                'Home',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              leading: Icon(
                                CupertinoIcons.home,
                                color: Colors.white,
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }

              return Center(
                  child: SpinKitCubeGrid(
                size: 140,
                color: Colors.blue.shade700,
              ));
            },
          ),
        ),
      ),
    );
  }

  // Future addformData(String email1) async {
  //   final user = FirebaseAuth.instance.currentUser;
  //   final userDocRef =
  //       FirebaseFirestore.instance.collection('dummy').doc(user?.uid);
  //   final doc = await userDocRef.get();
  //   if (!doc.exists) {
  //     await FirebaseFirestore.instance
  //         .collection('dummy')
  //         .doc(user?.uid)
  //         .set({'email': email1}).catchError((err) {
  //       print('Error: $err');
  //     });
  //     return (true);
  //   } else {
  //     return (false);
  //   }
  // }
}
