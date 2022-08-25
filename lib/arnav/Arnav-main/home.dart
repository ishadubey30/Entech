import 'package:flutter/material.dart';
import 'package:sih_finals/arnav/Arnav-main/drawer/navigation_drawer_widget.dart';

class MainPage_Arnav extends StatefulWidget {
  @override
  _MainPage_ArnavState createState() => _MainPage_ArnavState();
}

class _MainPage_ArnavState extends State<MainPage_Arnav> {
  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: NavigationDrawerWidget(),
      // endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("Video Trainings"),
      ),
      body: Builder(
          builder: (context) => Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: (Text('Training')))));
}
