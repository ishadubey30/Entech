import 'package:flutter/material.dart';
import 'catalog_upsc.dart';
import 'upsc_pdf.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({required this.item});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: Colors.black, width: 2)),
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 100,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UPSCPdf(
                                doc: item,
                              )));
                },
                leading:
                    Icon(Icons.picture_as_pdf, size: 80, color: Colors.black),
                title: Text(item.name,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ),
            ),
          ),
        ));
  }
}
