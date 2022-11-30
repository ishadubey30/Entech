import 'package:flutter/material.dart';
import '../drawer.dart';
import '../models/ani_soft_model.dart';
import '../widgets/ani_soft_widget.dart';

class ani_soft_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Editing/Animation Softwares"),
      ),
      drawer: MyDrawer(),
      body: Container(
        decoration: BoxDecoration(color: Colors.blue.shade200),
        child: ListView.builder(
            itemCount: AniModel.items2.length,
            itemBuilder: (context, index) {
              return ani_Soft(item: AniModel.items2[index]);
            }),
      ),
    );
  }
}
