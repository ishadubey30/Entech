import 'package:flutter/material.dart';
import '../drawer.dart';
import '../models/kitz_model.dart';
import '../widgets/kitz_widget.dart';

class student_developer_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Developer Kits"),
      ),
      drawer: MyDrawer(),
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
            itemCount: KitzModel.items4.length,
            itemBuilder: (context, index) {
              return Kitz(item: KitzModel.items4[index]);
            }),
      ),
    );
  }
}
