import 'package:flutter/material.dart';
import 'home_screen.dart';
import './drawer.dart';
import './catalog.dart';
import './itemWidget.dart';

class after12th extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("AFTER 12th"),
      ),
      drawer: MyDrawer(),
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
        child: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(item: CatalogModel.items[index]);
            }),
      ),
    );
  }
}
