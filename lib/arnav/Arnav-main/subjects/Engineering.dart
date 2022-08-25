import 'package:flutter/material.dart';
import 'package:sih_finals/arnav/Arnav-main/videos/dbms.dart';
import 'package:sih_finals/arnav/Arnav-main/videos/electrical.dart';
import 'package:sih_finals/arnav/Arnav-main/videos/electronics.dart';
import 'package:sih_finals/arnav/Arnav-main/videos/math.dart';
import 'package:sih_finals/arnav/Arnav-main/videos/video_screen.dart';
import 'package:sih_finals/arnav/Arnav-main/videos/videos.dart';

class Engineering extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Training videos for Engineering'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => VideoApp(),
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_circle,
                      size: 50,
                      color: Colors.white,
                    ),
                    Text(
                      "Chemistry",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Videopp(),
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_circle,
                      size: 50,
                      color: Colors.white,
                    ),
                    Text(
                      "Maths",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => VideoAp(),
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_circle,
                      size: 50,
                      color: Colors.white,
                    ),
                    Text(
                      "Physics",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => VieoaApp(),
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_circle,
                      size: 50,
                      color: Colors.white,
                    ),
                    Text(
                      "DBMS",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => VieoaaApp(),
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_circle,
                      size: 50,
                      color: Colors.white,
                    ),
                    Text(
                      "Electrical",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => VieoasApp(),
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_circle,
                      size: 50,
                      color: Colors.white,
                    ),
                    Text(
                      "Electronics",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )
                  ],
                ),
              ),
            ),
          ],
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: (1 / .4),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
        ),
      )));
}
