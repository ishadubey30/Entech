import 'package:flutter/material.dart';
import '../drawer.dart';
import '../models/com_soft_model.dart';
import '../widgets/com_soft_widget.dart';

class com_soft_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Common Softwares"),
      ),
      drawer: MyDrawer(),
      body: Container(
        decoration: BoxDecoration(color: Colors.blue.shade200),
        child: ListView.builder(
            itemCount: ComModel.items3.length,
            itemBuilder: (context, index) {
              return com_Soft(item: ComModel.items3[index]);
            }),
      ),
    );
  }
}
