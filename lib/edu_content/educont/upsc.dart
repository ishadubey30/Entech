import 'package:flutter/material.dart';
import 'navigation_drawer_widget.dart';
import 'upsc_list.dart';
import 'catalog_upsc.dart';
import 'package:google_fonts/google_fonts.dart';

class UPSCPage extends StatelessWidget {
  final style =
      TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold);
  final _pdf = List.filled(10, "Discription");
  @override
  Widget build(BuildContext context) => Scaffold(
      extendBodyBehindAppBar: true,
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text(
          'UPSC',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        shadowColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Container(
          decoration: BoxDecoration(color: Colors.blue.shade200),
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: CatalogUPSC.items.length,
                      itemBuilder: (context, index) {
                        return ItemWidget(item: CatalogUPSC.items[index]);
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
