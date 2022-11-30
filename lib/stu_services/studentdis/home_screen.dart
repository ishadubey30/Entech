import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sih_finals/screens/homepage.dart';
import './drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          )
        ],
        shadowColor: Colors.transparent,
        foregroundColor: Colors.black87,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'SMART INDIA HACKATON',
        ),
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
        child: const Center(
          child: Text('Home', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
