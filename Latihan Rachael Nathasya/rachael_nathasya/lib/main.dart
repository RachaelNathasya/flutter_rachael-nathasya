import 'package:flutter/material.dart';
import 'package:rachael_nathasya/homepages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rachael Nathasya',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
