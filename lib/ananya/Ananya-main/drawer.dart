import 'package:flutter/material.dart';
import 'package:sih_finals/ananya/Ananya-main/nationallevel.dart';
import 'package:sih_finals/ananya/Ananya-main/private.dart';
import 'package:sih_finals/ananya/Ananya-main/statelevel.dart';

class MyDrawer_Ananya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        elevation: 6,
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              color: Colors.blue,
              padding: EdgeInsets.all(15),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(
                        top: 30,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://pixabay.com/photos/a-book-pages-read-training-novel-5178205/'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Text(
                      'Counselling',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text(
                'International counselling',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: null,
            ),
            ListTile(
              title: Text(
                'National counselling',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NationalCounselling()));
              },
            ),
            ListTile(
                title: Text(
                  'State counselling',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StateCounselling()));
                }),
            ListTile(
                title: Text(
                  'Private counselling',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PrivateCounselling()));
                }),
          ],
        ),
      ),
    );
  }
}
