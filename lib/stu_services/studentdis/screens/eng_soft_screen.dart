import 'package:flutter/material.dart';
import '../drawer.dart';
import '../models/eng_soft_model.dart';
import '../widgets/eng_soft_widget.dart';

class eng_soft_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Engineering Softwares"),
      ),
      drawer: MyDrawer(),
      body: Container(
        decoration: BoxDecoration(color: Colors.blue.shade200),
        child: ListView.builder(
            itemCount: EngModel.items1.length,
            itemBuilder: (context, index) {
              return eng_soft(item: EngModel.items1[index]);
            }),
      ),
    );
  }
}
