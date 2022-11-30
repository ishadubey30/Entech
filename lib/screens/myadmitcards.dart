import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nil/nil.dart';

class MyAdmitCards extends StatefulWidget {
  final String documentId;
  MyAdmitCards(this.documentId);

  @override
  State<MyAdmitCards> createState() => _MyAdmitCardsState();
}

class _MyAdmitCardsState extends State<MyAdmitCards> {
  @override
  Widget build(BuildContext context) {
    CollectionReference dummy = FirebaseFirestore.instance.collection('dummy');
    CollectionReference gate = FirebaseFirestore.instance.collection('Gate');
    CollectionReference grad = FirebaseFirestore.instance.collection('Grad');
    CollectionReference jee_main =
        FirebaseFirestore.instance.collection('Jee Main');
    CollectionReference jee_adv =
        FirebaseFirestore.instance.collection('Jee Adv');
    CollectionReference neet = FirebaseFirestore.instance.collection('Neet');
    CollectionReference neet_pg =
        FirebaseFirestore.instance.collection('Neet PG');
    CollectionReference ssc_cgl =
        FirebaseFirestore.instance.collection('SSC CGL');
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width * 5.8,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.width * 5.3, 20, 5),
          child: Column(
            children: [
              //-------DUMMY DOCUMENT-----//

              Card(
                elevation: 6,
                margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: FutureBuilder<DocumentSnapshot>(
                  future: dummy.doc(widget.documentId).get(),
                  builder: (BuildContext context,
                      AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text("Something went wrong");
                    }

                    if (snapshot.hasData && !snapshot.data!.exists) {
                      return Container();
                    }

                    if (snapshot.connectionState == ConnectionState.done) {
                      Map<String, dynamic> data =
                          snapshot.data!.data() as Map<String, dynamic>;
                      return Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        child: Column(
                          children: [
                            Text("FORM12: ${data['email']}"),
                            Text("Location: ${data['location']}")
                          ],
                        ),
                      );
                    }

                    return Text("loading");
                  },
                ),
              ),

              //-------GATE DOCUMENT-----//

              Card(
                elevation: 6,
                child: FutureBuilder<DocumentSnapshot>(
                  future: gate.doc(widget.documentId).get(),
                  builder: (BuildContext context,
                      AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text("Something went wrong");
                    }

                    if (snapshot.hasData && !snapshot.data!.exists) {
                      return Container();
                    }

                    if (snapshot.connectionState == ConnectionState.done) {
                      Map<String, dynamic> data =
                          snapshot.data!.data() as Map<String, dynamic>;
                      return Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
                        child: Column(
                          children: [
                            Text("Gate: ${data['email']}"),
                            Text("Location: ${data['location']}")
                          ],
                        ),
                      );
                    }
                    print(snapshot.data);

                    return Text("loading");
                  },
                ),
              ),

              //-------GRAD DOCUMENT-----//

              Card(
                elevation: 6,
                child: FutureBuilder<DocumentSnapshot>(
                  future: grad.doc(widget.documentId).get(),
                  builder: (BuildContext context,
                      AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text("Something went wrong");
                    }

                    if (snapshot.hasData && !snapshot.data!.exists) {
                      return Container();
                    }

                    if (snapshot.connectionState == ConnectionState.done) {
                      Map<String, dynamic> data =
                          snapshot.data!.data() as Map<String, dynamic>;
                      return Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
                        child: Column(
                          children: [
                            Text("Graduation Exam Form: ${data['email']}"),
                            Text("Location: ${data['location']}")
                          ],
                        ),
                      );
                    }

                    return Text("loading");
                  },
                ),
              ),

              //-------JEE MAIN DOCUMENT-----//

              Card(
                elevation: 6,
                child: FutureBuilder<DocumentSnapshot>(
                  future: jee_main.doc(widget.documentId).get(),
                  builder: (BuildContext context,
                      AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text("Something went wrong");
                    }

                    if (snapshot.hasData && !snapshot.data!.exists) {
                      return Container();
                    }

                    if (snapshot.connectionState == ConnectionState.done) {
                      Map<String, dynamic> data =
                          snapshot.data!.data() as Map<String, dynamic>;
                      return Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
                        child: Column(
                          children: [
                            Text("JEE Main: ${data['email']}"),
                            Text("Location: ${data['location']}")
                          ],
                        ),
                      );
                    }

                    return Text("loading");
                  },
                ),
              ),

              //-------JEE ADV DOCUMENT-----//

              Card(
                elevation: 6,
                child: FutureBuilder<DocumentSnapshot>(
                  future: jee_adv.doc(widget.documentId).get(),
                  builder: (BuildContext context,
                      AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text("Something went wrong");
                    }

                    if (snapshot.hasData && !snapshot.data!.exists) {
                      return nil;
                    }

                    if (snapshot.connectionState == ConnectionState.done) {
                      Map<String, dynamic> data =
                          snapshot.data!.data() as Map<String, dynamic>;
                      return Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
                        child: Column(
                          children: [
                            Text("JEE Advance: ${data['email']}"),
                            Text("Location: ${data['location']}"),
                          ],
                        ),
                      );
                    }

                    return Text("loading");
                  },
                ),
              ),

              //-------NEET DOCUMENT-----//

              Card(
                elevation: 6,
                child: FutureBuilder<DocumentSnapshot>(
                  future: neet.doc(widget.documentId).get(),
                  builder: (BuildContext context,
                      AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text("Something went wrong");
                    }

                    if (snapshot.hasData && !snapshot.data!.exists) {
                      return Container();
                    }

                    if (snapshot.connectionState == ConnectionState.done) {
                      Map<String, dynamic> data =
                          snapshot.data!.data() as Map<String, dynamic>;
                      return Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
                        child: Column(
                          children: [
                            Text("NEET 123: ${data['email']}"),
                            Text("Location: ${data['location']}"),
                          ],
                        ),
                      );
                    }

                    return Text("loading");
                  },
                ),
              ),

              //-------NEET PG DOCUMENT-----//

              Card(
                elevation: 6,
                child: FutureBuilder<DocumentSnapshot>(
                  future: neet_pg.doc(widget.documentId).get(),
                  builder: (BuildContext context,
                      AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text("Something went wrong");
                    }

                    if (snapshot.hasData && !snapshot.data!.exists) {
                      return Container();
                    }

                    if (snapshot.connectionState == ConnectionState.done) {
                      Map<String, dynamic> data =
                          snapshot.data!.data() as Map<String, dynamic>;
                      return Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
                        child: Column(
                          children: [
                            Text("NEET PG: ${data['email']}"),
                            Text("Location: ${data['location']}"),
                          ],
                        ),
                      );
                    }

                    return Text("loading");
                  },
                ),
              ),

              //-------SSC CGL DOCUMENT-----//

              Card(
                elevation: 6,
                child: FutureBuilder<DocumentSnapshot>(
                  future: ssc_cgl.doc(widget.documentId).get(),
                  builder: (BuildContext context,
                      AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text("Something went wrong");
                    }

                    if (snapshot.hasData && !snapshot.data!.exists) {
                      return Container();
                    }

                    if (snapshot.connectionState == ConnectionState.done) {
                      Map<String, dynamic> data =
                          snapshot.data!.data() as Map<String, dynamic>;
                      return Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 5, 5),
                        child: Column(
                          children: [
                            Text("SSC CGL: ${data['email']}"),
                            Text("Location: ${data['location']}"),
                          ],
                        ),
                      );
                    }

                    return Text("loading");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
