import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:assets_rachael/gallery_page.dart';

void main() {
  testWidgets('Judul halaman harus Gallery Page', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: GalleryPage(),
    ));

    expect(find.text('List Galeri'), findsOneWidget);
  });
}
