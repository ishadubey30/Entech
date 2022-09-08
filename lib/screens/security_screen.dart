import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sih_finals/screens/homepage.dart';
import 'package:sih_finals/utils/security_widget.dart';

import '../models/security.dart';

class security_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          )
        ],
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Security Tips and Videos"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 194, 233, 251),
              Color.fromARGB(255, 170, 201, 251),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: ListView.builder(
            itemCount: SecModel.items.length,
            itemBuilder: (context, index) {
              return Sect(item: SecModel.items[index]);
            }),
      ),
    );
  }
}
