import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Center(child: Text('This is Material App')),
    Center(child: Text('Rachael')),
    Center(child: Text('Nathasya')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rachael Nathasya'),
        backgroundColor: Colors.black54,
      ),
      drawer: Drawer(
        backgroundColor: Colors.black54,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Text('Home'),
              textColor: Colors.white,
              onTap: () {},
            ),
            ListTile(
              title: Text('Setting'),
              textColor: Colors.white,
              onTap: () {},
            ),
          ],
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black54,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Rachael',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Nathasya',
          ),
        ],
      ),
    );
  }
}
