Platform Widget

A. MaterialApp
- widget dasar yang menngemas seluruh widget dalam aplikasi
- widget yang digunakan pada sistem android
- di import daeri package:flutter/material.dart

Struktur : 
- widget yang pertama kali dibuka, diletakkan pada bagian home
- Mengatur halaman juga dapat dilakukan dengaan menggunakan dengan menggunakan routes dan initialRoute

B. Scaffold : widget dasar untuk membangun sebuah halamn pada MaterialApp

Struktur : 
- Membentuk tata letak  dasar sebuah halaman yang ditulis melalui properti-properti
- Scaffold (appBar, body, bottomNavigationBar)

C. CupertinoApp
- widget dasar yang mengemas seluruh widget dalam aplikasi
- widget yang digunakan pada sistem iOS
- Di import dari package:flutter/cupertino.dart

Struktur :
- Variabel _themeDark dibuat untuk menyimpan tema
- Diperlukan karena Cupertino tidak menyediakan ThemeData.dark() seperti pada material
- Widget yang pertama kali dibuka, diletakkan pada bagian home

D. CupertinoPageScaffold : widget dasar untuk membangun sebuah halaman pada CupertinoApp

Struktur :
- Membentuk tata letak dasar sebuah halaman yang ditulis melalui properti properti
- CupertinoPageScaffold(navigationBar, child)




