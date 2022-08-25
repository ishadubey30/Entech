import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'after12.dart';
//import 'student_developer_kits.dart';
// import 'aftergrad.dart';
import './drawer.dart';
import 'aftergraduation.dart';
import 'government.dart';

class exam_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: MyDrawer(),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'EXAM FORMS',
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 194, 233, 251),
              Color.fromARGB(255, 170, 201, 251),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => after12th()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.25),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.collections,
                        size: 40,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "AFTER 12th",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 25,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => govt()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.25),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.square_favorites,
                        size: 40,
                        color: Colors.black87,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "AFTER GRADUATION",
                        style: TextStyle(color: Colors.black87, fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => afterpg1()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.25),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.pen,
                        size: 40,
                        color: Colors.black87,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "GOVERNMENT EXAMS",
                        style: TextStyle(color: Colors.black87, fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 2,
            ),
          ),
        ),
      ),
    );
  }
}
