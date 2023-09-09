import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'My Flutter App',
      theme: CupertinoThemeData(
        brightness: Brightness.dark, // Mengatur tema menjadi gelap
      ),
      home: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.black,
        navigationBar: CupertinoNavigationBar(
          middle: Text('Rachael Nathasya'),
        ),
        child: Center(
          child: Text('this is Cupertino'),
        ),
      ),
    );
  }
}
