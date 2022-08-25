import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:flutter/material.dart';
import 'catalog_upsc.dart';

class UPSCPdf extends StatefulWidget {
  const UPSCPdf({required this.doc, Key? key}) : super(key: key);
  final Item doc;

  @override
  State<UPSCPdf> createState() => _PdfState();
}

class _PdfState extends State<UPSCPdf> {
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
