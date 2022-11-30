import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../drawer.dart';
import '../models/DiscountModel.dart';
import '../widgets/DiscountWidget.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class student_discounts_screen extends StatefulWidget {
  @override
  State<student_discounts_screen> createState() =>
      _student_discounts_screenState();
}

class _student_discounts_screenState extends State<student_discounts_screen> {
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
        decoration: BoxDecoration(color: Colors.blue.shade200),
        child: ListView.builder(
            itemCount: DiscountModel.items.length,
            itemBuilder: (context, index) {
              return DiscountWidget(item: DiscountModel.items[index]);
            }),
      ),
    );
  }
}
