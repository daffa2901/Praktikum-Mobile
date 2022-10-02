import 'package:flutter/material.dart';
// Contoh pemanggilan class ditempat lain agar bisa digunakan
import 'home_page.dart';
import 'tourism_place.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SafeArea(
            child: HomePage()
        )
    );
  }
}