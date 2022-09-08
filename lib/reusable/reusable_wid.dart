import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    // width: 240,
    // height: 240,
  );
}

TextField reusable(String text, IconData icon, bool isPassType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPassType,
    enableSuggestions: !isPassType,
    autocorrect: !isPassType,
    cursorColor: Colors.black,
    style: TextStyle(color: Colors.black.withOpacity(0.8)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.black,
      ),
      label: Text(text),
      labelStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      fillColor: Colors.transparent,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
            width: 00,
            style: BorderStyle.solid,
          )),
    ),
    keyboardType:
        isPassType ? TextInputType.visiblePassword : TextInputType.emailAddress,
  );
}

Container firebaseButton(BuildContext context, String title, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(90),
    ),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.white;
            }
            return Color.fromARGB(255, 102, 184, 9);
          },
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    ),
  );
}

Future addUserData(String email, String name, String criminal, String disable,
    int aadhar, int hsc_rollNo, int grad_rollNo, int hsc_percent) async {
  final user = FirebaseAuth.instance.currentUser;
  await FirebaseFirestore.instance.collection('users').doc(user?.uid).set(
    {
      'email': email,
      'name': name,
      'aadhar details': aadhar,
      'hsc roll number': hsc_rollNo,
      'grad roll number': grad_rollNo,
      'hsc percentage': hsc_percent,
      'Criminal': criminal,
      'Disability': disable,
    },
  );
}
