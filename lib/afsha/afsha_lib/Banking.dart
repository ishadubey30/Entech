import 'package:flutter/material.dart';
import 'catalog_bank.dart';
import 'navigation_drawer_widget.dart';
import 'bank_list.dart';
import 'package:google_fonts/google_fonts.dart';

class BankingPage extends StatelessWidget {
  final style =
      TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) => Scaffold(
      extendBodyBehindAppBar: true,
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text(
          'Banking',
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
                      itemCount: CatalogBank.items.length,
                      itemBuilder: (context, index) {
                        return ItemWidget(item: CatalogBank.items[index]);
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
