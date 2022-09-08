import 'package:flutter/material.dart';
import './drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget_Ananya(),
      appBar: AppBar(
        title: const Text(
          'SIH',
        ),
      ),
      body: const Center(
        child: Text('Home', style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
