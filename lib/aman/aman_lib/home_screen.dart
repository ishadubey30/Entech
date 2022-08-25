import 'package:flutter/material.dart';
import './drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: MyDrawer(),
      appBar: AppBar(
        shadowColor: Colors.transparent,
        foregroundColor: Colors.black87,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'SMART INDIA HACKATON',
        ),
      ),
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
        child: const Center(
          child: Text('Home', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
