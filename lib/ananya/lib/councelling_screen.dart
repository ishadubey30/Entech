import 'package:flutter/material.dart';
import './drawer.dart';

class councelling_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget_Ananya(),
      appBar: AppBar(
        title: const Text('councelling'),
      ),
      body: const Center(
        child: Text('councelling screen on processing',
            style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
