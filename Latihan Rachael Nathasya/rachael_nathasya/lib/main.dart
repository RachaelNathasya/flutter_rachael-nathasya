import 'package:flutter/material.dart';

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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rachael Nathasya'),
      ),
      body: Container(
        color: Colors.lightBlue,
        margin: EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Rachael'),
                  Text('Nathasya'),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text('List Siswa'),
              // Expanded(
              //   child: ListView(
              //     padding: const EdgeInsets.all(8),
              //     children: [
              //       Text('Descendants of the Sun'),
              //       Text('Goblin'),
              //       Text('Itaewon Class'),
              //       Text('Crash Landing on You'),
              //       Text('The King: Eternal Monarch'),
              //       Text('Start-Up'),
              //       Text('Vincenzo'),
              //       Text('Hospital Playlist'),
              //       Text('Signal'),
              //       Text('Reply 1988'),
              //       Text('While You Were Sleeping'),
              //       Text('Love Alarm'),
              //       Text('Mr. Sunshine'),
              //       Text('Descendants of the Sun'),
              //       Text('Goblin'),
              //       Text('Itaewon Class'),
              //       Text('Crash Landing on You'),
              //       Text('The King: Eternal Monarch'),
              //       Text('Start-Up'),
              //       Text('Vincenzo'),
              //       Text('Hospital Playlist'),
              //       Text('Signal'),
              //       Text('Reply 1988'),
              //       Text('While You Were Sleeping'),
              //       Text('Love Alarm'),
              //       Text('Mr. Sunshine'),
              //       Text('Descendants of the Sun'),
              //       Text('Goblin'),
              //       Text('Itaewon Class'),
              //       Text('Crash Landing on You'),
              //       Text('The King: Eternal Monarch'),
              //       Text('Start-Up'),
              //       Text('Vincenzo'),
              //       Text('Hospital Playlist'),
              //       Text('Signal'),
              //       Text('Reply 1988'),
              //       Text('While You Were Sleeping'),
              //       Text('Love Alarm'),
              //       Text('Mr. Sunshine'),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 400,
              //   child: GridView.count(
              //     crossAxisCount: 2,
              //     padding: const EdgeInsets.all(10),
              //     children: [
              //       Text('Descendants of the Sun'),
              //       Text('Goblin'),
              //       Text('Itaewon Class'),
              //       Text('Crash Landing on You'),
              //       Text('The King: Eternal Monarch'),
              //       Text('Start-Up'),
              //       Text('Vincenzo'),
              //       Text('Hospital Playlist'),
              //       Text('Signal'),
              //       Text('Reply 1988'),
              //       Text('While You Were Sleeping'),
              //       Text('Love Alarm'),
              //       Text('Mr. Sunshine'),
              //       Text('Descendants of the Sun'),
              //       Text('Goblin'),
              //       Text('Itaewon Class'),
              //       Text('Crash Landing on You'),
              //       Text('The King: Eternal Monarch'),
              //       Text('Start-Up'),
              //       Text('Vincenzo'),
              //       Text('Hospital Playlist'),
              //       Text('Signal'),
              //       Text('Reply 1988'),
              //       Text('While You Were Sleeping'),
              //       Text('Love Alarm'),
              //       Text('Mr. Sunshine'),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
