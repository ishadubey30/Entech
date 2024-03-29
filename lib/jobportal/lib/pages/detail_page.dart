import 'package:flutter/material.dart';

import 'package:sih_finals/jobportal/lib/components/work_categories.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 60),
                Image(
                    image: AssetImage('assests/images/google.png'), height: 80),
                SizedBox(height: 30),
                Text(
                  'UX Designer',
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
                SizedBox(height: 5),
                Text(
                  'Google',
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    WorkCategories(
                      label: 'Full Time',
                    ),
                    WorkCategories(
                      label: 'Design',
                    ),
                    WorkCategories(
                      label: 'Junior',
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Description',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                Text(
                  'Requirements',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                Text(
                  'About',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Text(
            '(1)  Master’s Degree in Design and Computer Science,\n       Computer interactions, or a releated field',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 15),
          Text(
            '(2)  Master’s Degree in Design and Computer Science,\n       Computer interactions, or a releated field',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 15),
          Text(
            '(3)  Master’s Degree in Design and Computer Science,\n       Computer interactions, or a releated field',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 15),
          Text(
            '(4)  Master’s Degree in Design and Computer Science,\n       Computer interactions, or a releated field',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 15),
          Text(
            '(5)  Master’s Degree in Design and Computer Science,\n       Computer interactions, or a releated field',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 15),
          Text(
            '(6)  Master’s Degree in Design and Computer Science,\n       Computer interactions, or a releated field',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
