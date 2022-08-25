import 'package:flutter/material.dart';
import 'navigation_drawer_widget.dart';
import 'catalog_eng.dart';
import 'eng_list.dart';
import 'package:google_fonts/google_fonts.dart';

class EngineeringPage extends StatelessWidget {
  final style =
      TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text(
            'Engineering',
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
                  Color.fromARGB(255, 241, 239, 235),
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
                        itemCount: CatalogEng.items.length,
                        itemBuilder: (context, index) {
                          return ItemWidget(item: CatalogEng.items[index]);
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
}
