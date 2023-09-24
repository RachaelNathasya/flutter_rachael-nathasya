import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class WelcomeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/acel.jpg',
            width: 150,
            height: 150,
          ), // Ganti dengan gambar Anda
          SizedBox(height: 20.0),
          Text(
            'Allooooooo!!',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Text(
            'Temukan pengalaman tydak seru dengan aplikasi Acell.',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class ContactUsSection extends StatefulWidget {
  @override
  _ContactUsSectionState createState() => _ContactUsSectionState();
}

class _ContactUsSectionState extends State<ContactUsSection> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  void _handleSubmit() {
    String username = usernameController.text;
    String email = emailController.text;
    String message = messageController.text;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Data yang Anda masukkan:'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Username: $username'),
              Text('Email: $email'),
              Text('Message: $message'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          TextField(
            controller: usernameController,
            decoration: InputDecoration(labelText: 'Username'),
          ),
          SizedBox(height: 10.0),
          TextField(
            controller: emailController,
            decoration: InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 10.0),
          TextField(
            controller: messageController,
            decoration: InputDecoration(labelText: 'Message'),
            maxLines: 3,
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _handleSubmit,
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              WelcomeSection(),
              SizedBox(height: 20.0),
              ContactUsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
