import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sih_finals/stu_services/studentdis/screens/ani_soft_screen.dart';
import 'package:sih_finals/stu_services/studentdis/screens/com_soft_screen.dart';
import 'package:sih_finals/stu_services/studentdis/screens/eng_soft_screen.dart';

import '../drawer.dart';

class free_software_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text('Free Softwares'),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.blue.shade200),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => eng_soft_screen()));
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
                        Icons.engineering_rounded,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Engineering Softwares",
                        style: TextStyle(color: Colors.white, fontSize: 25),
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
                          builder: (context) => ani_soft_screen()));
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
                        Icons.stars_rounded,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Editing/Animation Softwares",
                        style: TextStyle(color: Colors.white, fontSize: 25),
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
                          builder: (context) => com_soft_screen()));
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
                        Icons.group_add_rounded,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Common Softwares",
                        style: TextStyle(color: Colors.white, fontSize: 25),
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
