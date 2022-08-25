import 'package:flutter/material.dart';
import 'navigation_drawer_widget.dart';
import 'int_list.dart';
import 'catalog_int.dart';
import 'package:google_fonts/google_fonts.dart';

class IntPage extends StatelessWidget {
  final style =
      TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) => Scaffold(
      extendBodyBehindAppBar: true,
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text(
          'International Exams',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 152, 231, 245),
                Colors.white,
                Color.fromARGB(255, 246, 215, 169),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: CatalogInt.items.length,
                      itemBuilder: (context, index) {
                        return ItemWidget(item: CatalogInt.items[index]);
                      })),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("With ENTECH nothing is hard to achieve!",
                      style: GoogleFonts.alice(
                        textStyle: style,
                      ))),
            ],
          )));
}
