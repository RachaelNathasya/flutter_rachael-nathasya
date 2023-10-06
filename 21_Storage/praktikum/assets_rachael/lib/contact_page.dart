import 'package:assets_rachael/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Contact {
  String name;
  String phoneNumber;

  Contact({required this.name, required this.phoneNumber});
}

class NewContactsPage extends StatefulWidget {
  @override
  _NewContactsPageState createState() => _NewContactsPageState();
}

class _NewContactsPageState extends State<NewContactsPage> {
  List<Contact> contacts = [];
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = Colors.grey;

  void initializeContacts() {
    contacts = [
      Contact(name: 'Rachael Nathasya', phoneNumber: '083634674664'),
      Contact(name: 'Jane Smith', phoneNumber: '087356297342'),
    ];
  }

  String? _username;

  @override
  void initState() {
    super.initState();
    initializeContacts();
    getUsername();
  }

  Future<void> getUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _username = prefs.getString('username');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              clearSharedPreferences();
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Contact'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/contact');
              },
            ),
            ListTile(
              title: Text('Gallery'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/gallery');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.phone_android,
              size: 25.0,
            ),
            SizedBox(height: 10.0),
            Text(
              'Create New Contacts',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.0),
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
            buildDatePicker(context),
            const SizedBox(
              height: 10,
            ),
            buildColorPicker(context),
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
            SizedBox(height: 25.0),
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
      bottomNavigationBar: _username != null
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Masuk sebagai : $_username'),
            )
          : null,
    );
  }

  void clearSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
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

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('date'),
            TextButton(
              onPressed: () async {
                final selectDate = await showDatePicker(
                  context: context,
                  initialDate: currentDate,
                  firstDate: DateTime(1990),
                  lastDate: DateTime(currentDate.year + 5),
                );

                setState(
                  () {
                    if (selectDate != null) {
                      _dueDate = selectDate;
                    }
                  },
                );
              },
              child: const Text('select'),
            ),
          ],
        ),
        Text(
          DateFormat('dd-MM-yyyy').format(_dueDate),
        ),
      ],
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Color'),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: double.infinity,
          color: _currentColor,
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(_currentColor),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Pick Your Color'),
                    content: BlockPicker(
                      pickerColor: _currentColor,
                      onColorChanged: (color) {
                        setState(
                          () {
                            _currentColor = color;
                          },
                        );
                      },
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Save'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('Pick color'),
          ),
        ),
      ],
    );
  }
}
