import 'package:flutter/material.dart';

import 'package:sih_finals/jobportal/lib/components/recomended_cart.dart';
import 'package:sih_finals/jobportal/lib/components/work_categories.dart';
import 'package:sih_finals/jobportal/lib/pages/detail_page.dart';

import '../constants.dart';

class HomePage_JobPortal extends StatelessWidget {
  const HomePage_JobPortal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(canvasColor: bgColor),
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding, vertical: defaultPadding * 2),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Image(
                      image: AssetImage('assests/images/mourn.png'),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'ENTECH Jobs\nBeat The Unemployment',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: defaultPadding,
                    right: defaultPadding,
                    top: 30,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(width: 0.0)),
                      fillColor: bgColor2,
                      filled: true,
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.white54),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.white54,
                      ),
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Featured Jobs',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: defaultPadding * 2,
                          horizontal: defaultPadding),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'See all',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 1.06,
                  // width: 350,
                  decoration: BoxDecoration(
                    color: bgColor2,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defaultPadding,
                                vertical: defaultPadding - 8),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assests/images/person1.jpeg'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding,
                            ),
                            child: Text.rich(
                              TextSpan(children: [
                                TextSpan(
                                  text: 'Product Designer\n     ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                TextSpan(
                                    text: '   SAP Labs',
                                    style: TextStyle(
                                        color: Colors.white54, fontSize: 14))
                              ]),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
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
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Bangalore, India',
                            style:
                                TextStyle(color: Colors.white60, fontSize: 16),
                          ),
                          Text(
                            '\$1600/year',
                            style:
                                TextStyle(color: Colors.white60, fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Recomended Jobs',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: defaultPadding * 2,
                          horizontal: defaultPadding),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'See all',
                          style: TextStyle(color: Colors.white54, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(),
                          ),
                        );
                      },
                      child: RecommendCard(
                        imgSrc: 'assests/images/person2.jpeg',
                        company: 'Google',
                        jobName: 'UX Designer',
                        salary: '\$1600/year',
                      ),
                    ),
                    RecommendCard(
                      imgSrc: 'assests/images/person3.jpeg',
                      company: 'Facebook',
                      jobName: 'Engineer',
                      salary: '\$1900/year',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
