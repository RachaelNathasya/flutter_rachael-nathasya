import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Contact {
  String name;
  String phoneNumber;

  Contact({required this.name, required this.phoneNumber});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewContactsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NewContactsPage extends StatefulWidget {
  @override
  _NewContactsPageState createState() => _NewContactsPageState();
}

class _NewContactsPageState extends State<NewContactsPage> {
  List<Contact> contacts = [];
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  void initializeContacts() {
    contacts = [
      Contact(name: 'Rachael Nathasya', phoneNumber: '083634674664'),
      Contact(name: 'Jane Smith', phoneNumber: '087356297342'),
    ];
  }

  @override
  void initState() {
    super.initState();
    initializeContacts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.phone_android,
              size: 30.0,
            ),
            SizedBox(height: 12.0),
            Text(
              'Create New Contacts',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Text(
              'Tambahkan kontak baru, Masukan nama dan nomor telepon',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Insert Your Name',
                filled: true,
                fillColor: Color.fromARGB(255, 219, 173, 228),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: 'Nomor',
                hintText: '+62...',
                filled: true,
                fillColor: Color.fromARGB(255, 219, 173, 228),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ElevatedButton(
                  onPressed: () {
                    addContact();
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      backgroundColor: Color.fromARGB(255, 77, 0, 90)),
                  child: Container(
                    width: 60.0,
                    height: 40.0,
                    child: Center(
                      child: Text('Submit'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Text(
              'List Contacts',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(contacts[index].name),
                    subtitle: Text(contacts[index].phoneNumber),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit_outlined),
                          onPressed: () {
                            editContact(index);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete_outline),
                          onPressed: () {
                            removeContact(index);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void addContact() {
    setState(() {
      contacts.add(Contact(
        name: nameController.text,
        phoneNumber: phoneController.text,
      ));
      nameController.clear();
      phoneController.clear();
    });
  }

  void removeContact(int index) {
    setState(() {
      contacts.removeAt(index);
    });
  }

  Future<void> editContact(int index) async {
    TextEditingController newNameController = TextEditingController();
    TextEditingController newPhoneController = TextEditingController();

    newNameController.text = contacts[index].name;
    newPhoneController.text = contacts[index].phoneNumber;

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Contact'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: newNameController,
                decoration: InputDecoration(
                  hintText: 'New Name',
                ),
              ),
              SizedBox(height: 10.0),
              TextField(
                controller: newPhoneController,
                decoration: InputDecoration(
                  hintText: 'New Phone',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  contacts[index].name = newNameController.text;
                  contacts[index].phoneNumber = newPhoneController.text;
                });
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}
