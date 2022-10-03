import 'package:flutter/material.dart';
import 'books_data.dart';

class gambar extends StatefulWidget {
  const gambar({Key? key}) : super(key: key);

  @override
  State<gambar> createState() => _gambarState();
}

class _gambarState extends State<gambar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("GAMBAR PREVIEW"),
      ),
    );
  }
}
