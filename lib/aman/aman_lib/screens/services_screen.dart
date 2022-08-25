import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sih_finals/aman/aman_lib/screens/Student_discount_screen.dart';
import 'package:sih_finals/aman/aman_lib/screens/free_software_screen.dart';
import 'package:sih_finals/aman/aman_lib/screens/student_developer_screen.dart';
import '../drawer.dart';

class services_screen extends StatelessWidget {
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
          'Services',
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => student_discounts_screen()));
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
                        "Student Discounts",
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
                          builder: (context) => free_software_screen()));
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
                        "Free Softwares",
                        style: TextStyle(color: Colors.black87, fontSize: 25),
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
                          builder: (context) => student_developer_screen()));
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
                        CupertinoIcons.device_laptop,
                        size: 40,
                        color: Colors.black87,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Student Developer Kits",
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
