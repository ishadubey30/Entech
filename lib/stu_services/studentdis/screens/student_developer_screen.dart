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
        decoration: BoxDecoration(color: Colors.blue.shade200),
        child: ListView.builder(
            itemCount: KitzModel.items4.length,
            itemBuilder: (context, index) {
              return Kitz(item: KitzModel.items4[index]);
            }),
      ),
    );
  }
}
