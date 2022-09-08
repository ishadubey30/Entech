
import 'package:flutter/material.dart';

class rollnumber extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _rollnumber();
  }
}
class _rollnumber extends State<rollnumber> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Enter your Roll number'),
          content: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 170, 201, 251),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('After filling Counselling type'),
    );
  }
}
