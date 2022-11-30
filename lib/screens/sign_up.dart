import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sih_finals/screens/homepage.dart';

import '../reusable/reusable_wid.dart';
import '../utils/colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _passController = TextEditingController();
  TextEditingController _confirmPassController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _aadharController = TextEditingController();
  TextEditingController _hscController = TextEditingController();
  TextEditingController _gradController = TextEditingController();
  TextEditingController _hscPercentController = TextEditingController();
  TextEditingController _criminalController = TextEditingController();
  TextEditingController _disabilityController = TextEditingController();
  bool _obscureText = true;
  bool _obscureText1 = true;
  bool isButtonActive = true;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          leadingWidth: 16,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: RadialGradient(colors: [
              hexStringColor("FFFFFF"),
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
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),

                    //Email Field

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

                    //Password Field

                    TextFormField(
                      controller: _passController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: Icon(_obscureText
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
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
                    SizedBox(
                      height: 20,
                    ),
                    //Confirm Pass
                    TextFormField(
                      controller: _confirmPassController,
                      obscureText: _obscureText1,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText1 = !_obscureText1;
                            });
                          },
                          child: Icon(_obscureText1
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        prefixIcon: Icon(CupertinoIcons.lock_fill),
                        prefixIconColor: Colors.black,
                        labelText: "Confirm Password",
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
                        } else if (value != _passController.text) {
                          return "Password Didn't Match. Try Again!";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    //Name Field

                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.textformat_abc),
                        prefixIconColor: Colors.black,
                        labelText: "Enter Name",
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
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return "Please Enter Correct Name";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    //Aadhar Number Field

                    TextFormField(
                      controller: _aadharController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.creditcard),
                        prefixIconColor: Colors.black,
                        labelText: "Enter Aadhar Details",
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              width: 00,
                              style: BorderStyle.solid,
                            )),
                      ),
                      validator: (value) {
                        if (value!.isEmpty || value.length != 12) {
                          return "Please Enter Correct 12 digit Aadhar Number";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    //HSC Roll Number Field

                    TextFormField(
                      controller: _hscController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.textformat_subscript),
                        prefixIconColor: Colors.black,
                        labelText: "Enter HSC Roll Number",
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              width: 00,
                              style: BorderStyle.solid,
                            )),
                      ),
                      validator: (value) {
                        if (value!.isEmpty || value.length != 7) {
                          return "Please Enter Correct 7 digit HSC Roll Number";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    //Graduation Roll Number Field

                    TextFormField(
                      controller: _gradController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.textformat_alt),
                        prefixIconColor: Colors.black,
                        labelText: "Enter Graduation Roll Number",
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              width: 00,
                              style: BorderStyle.solid,
                            )),
                      ),
                      validator: (value) {
                        if (value!.isEmpty || value.length < 10) {
                          return "Please Enter Correct Graduation Roll Number";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _hscPercentController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.textformat_123),
                        prefixIconColor: Colors.black,
                        labelText: "Enter 12th/Diploma Percent",
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              width: 00,
                              style: BorderStyle.solid,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _criminalController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.textformat_123),
                        prefixIconColor: Colors.black,
                        labelText: "Previous Criminal Record",
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            width: 00,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Value cannot be empty";
                        } else if (value != 'y' &&
                            value != 'Y' &&
                            value != 'n' &&
                            value != 'N') {
                          return "Please Enter Y for Yes and N for No";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _disabilityController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.textformat_123),
                        prefixIconColor: Colors.black,
                        labelText: "Any Disability?",
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              width: 00,
                              style: BorderStyle.solid,
                            )),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Value cannot be empty";
                        } else if (value != 'y' &&
                            value != 'Y' &&
                            value != 'n' &&
                            value != 'N') {
                          return "Please Enter Y for Yes and N for No";
                        } else {
                          return null;
                        }
                      },
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    firebaseButton(
                      context,
                      "Sign Up",
                      () {
                        if (_formKey.currentState!.validate()) {
                          FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                            email: _emailController.text.trim(),
                            password: _passController.text.trim(),
                          )
                              .then((value) async {
                            print("Created New Account");

                            addUserData(
                                _emailController.text.trim(),
                                _nameController.text.trim(),
                                _criminalController.text.trim(),
                                _disabilityController.text.trim(),
                                int.parse(_aadharController.text.trim()),
                                int.parse(_hscController.text.trim()),
                                int.parse(_gradController.text.trim()),
                                int.parse(_hscPercentController.text.trim()));
                            SharedPreferences prefs = await SharedPreferences
                                .getInstance(); //Shared Pref
                            prefs.setString(
                                'email', _emailController.toString());
                            prefs.setString('pass', _passController.toString());

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          }).onError((error, stackTrace) {
                            var snackBar =
                                SnackBar(content: Text('Login Failed'));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                            print('${error.toString()}');
                          });
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
