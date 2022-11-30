import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:flutter/material.dart';
import 'catalog_int.dart';

class IntPdf extends StatefulWidget {
  const IntPdf({required this.doc, Key? key}) : super(key: key);
  final Item doc;

  @override
  State<IntPdf> createState() => _PdfState();
}

class _PdfState extends State<IntPdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          widget.doc.name,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        // foregroundColor: Colors.black,
        // shadowColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SfPdfViewer.network(widget.doc.url),
    );
  }
}
