import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class DetailLatihan extends StatefulWidget {
  final String url;
  final String category;
  DetailLatihan(this.url, this.category);

  @override
  _DetailLatihanState createState() => _DetailLatihanState();
}

class _DetailLatihanState extends State<DetailLatihan> {
  PDFDocument _doc;
  bool _loading;
  String url;

  @override
  void initState() {
    super.initState();
    url = widget.url;
    _initPdf(url);
  }

  _initPdf(String url) async {
    setState(() {
      _loading = true;
    });
    final doc = await PDFDocument.fromURL(url);
    setState(() {
      _doc = doc;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Halaman Latihan"),
      ),
      body: _loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : PDFViewer(
              showPicker: false,
              document: _doc,
              indicatorBackground: Color(0xffD76EF5),
            ),
    );
  }
}
