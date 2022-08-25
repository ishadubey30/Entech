import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:sih_finals/screens/homepage.dart';
import 'package:sih_finals/screens/resetPass.dart';
import 'package:sih_finals/screens/sign_up.dart';
import 'package:sih_finals/utils/colors.dart';

import '../reusable/reusable_wid.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var userId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: RadialGradient(colors: [
          hexStringColor("ffffff"),
          hexStringColor("FFFFFF"),
        ], radius: 1.2

            // begin: Alignment.topLeft,
            // end: Alignment.bottomLeft,
            ),
      ),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.width * 0.35, 20, 0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                logoWidget("assests/images/logo.jpg"),
                SizedBox(height: 45),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    prefixIconColor: Colors.black,
                    labelText: "Enter Email",
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          width: 00,
                          style: BorderStyle.solid,
                        )),
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}')
                            .hasMatch(value)) {
                      return "Please Enter Correct Email";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.lock_fill),
                    prefixIconColor: Colors.black,
                    labelText: "Enter Password",
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          width: 00,
                          style: BorderStyle.solid,
                        )),
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z 0-9]+$').hasMatch(value) ||
                        value.length < 6) {
                      return "Password must be 6 digits long";
                    } else {
                      return null;
                    }
                  },
                ),
                forgetPass(context),
                firebaseButton(
                  context,
                  "Sign In",
                  () {
                    if (_formKey.currentState!.validate()) {
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                        email: _emailController.text.trim(),
                        password: _passController.text.trim(),
                      )
                          .then((value) {
                        const snackBar =
                            SnackBar(content: Text("Login Successfully"));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      }).onError((error, stackTrace) {
                        var snackBar = SnackBar(content: Text('Login Failed'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        print('${error.toString()}');
                      });
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                signUpOpt(),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Row signUpOpt() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't Have Account?",
          style: TextStyle(color: Colors.black),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignUp()));
          },
          child: Text(
            "  Sign Up",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget forgetPass(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // height: 20,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: Text(
          "Forgot Password?",
          textAlign: TextAlign.right,
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResetPass())),
      ),
    );
  }
}
