import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Background   Color
      // 5.jpg        Color.fromRGBO(255, 220, 14, 1.0)
      // 4.jpg        Colors.amberAccent
      // -            Colors.amber
      home: Home("5.jpg", Color.fromRGBO(255, 220, 14, 0.7)),
    );
  }
}

