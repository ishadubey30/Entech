import 'package:flutter/material.dart';
import '../drawer.dart';
import '../models/DiscountModel.dart';
import '../widgets/DiscountWidget.dart';

class student_discounts_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("Student Discount"),
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
            itemCount: DiscountModel.items.length,
            itemBuilder: (context, index) {
              return DiscountWidget(item: DiscountModel.items[index]);
            }),
      ),
    );
  }
}
