import 'package:flutter/material.dart';
import 'package:assets_rachael/gallery_page.dart';
import 'package:assets_rachael/contact_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewContactsPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/contact': (context) => NewContactsPage(),
        '/gallery': (context) => GalleryPage(),
      },
    );
  }
}
