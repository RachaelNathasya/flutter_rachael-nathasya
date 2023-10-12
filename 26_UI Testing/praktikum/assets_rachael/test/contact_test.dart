import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:assets_rachael/contact_page.dart';

void main() {
  testWidgets('Judul halaman harus NewContactsPage',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: NewContactsPage(),
    ));

    // Test the main screen
    expect(find.text('Create New Contacts'), findsOneWidget);
    expect(find.text('List Contacts'), findsOneWidget);
  });
}
