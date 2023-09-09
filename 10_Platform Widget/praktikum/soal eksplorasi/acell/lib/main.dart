import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int _selectedIndex = 0;

  final List<String> _items = [
    'Learn Flutter',
    'Learn ReactJS',
    'Learn VueJS',
    'Learn Tailwind CSS',
    'Learn UI/UX',
    'Learn Figma',
    'Learn Digital Marketing',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF6200EE),
          title: Text(
            'My Flutter App',
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 8, right: 15),
              child: Icon(
                Icons.search,
                size: 30,
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(_items[index]),
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF6200EE),
          selectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(color: Colors.white),
          unselectedItemColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.info,
              ),
              label: 'Information',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF03DAC5),
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
