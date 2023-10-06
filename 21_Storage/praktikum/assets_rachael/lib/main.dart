import 'package:flutter/material.dart';
import 'package:assets_rachael/galerry_page.dart';
import 'package:assets_rachael/contact_page.dart';
import 'package:assets_rachael/login_screen.dart';

void main() => runApp(MaterialApp(
      home: LoginScreen(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewContactsPage(),
      routes: {
        '/contact': (context) => NewContactsPage(),
        '/gallery': (context) => GalleryPage(),
      },
    );
  }
}
