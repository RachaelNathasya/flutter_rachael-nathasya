import 'package:flutter/material.dart';
import 'package:assets_rachael/galerry_page.dart';
import 'package:assets_rachael/contact_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ContactsProvider()),
      ],
      child: MyApp(),
    ),
  );
}

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
