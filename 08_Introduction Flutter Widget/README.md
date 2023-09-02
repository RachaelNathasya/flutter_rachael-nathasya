Introduction Flutter Widget
A. Apa itu Flutter? Alat pengembangan antarmuka pengguna yang digunakan untuk membuat aplikasi mobile, desktop, dan web.

Keunggulan Flutter
- Mudah digunakan dan dipelajari
- Produktivitas tinggi
- Dokumentasi lengkap
- Komunitas yang berkembang

Apa saja bagian dari Flutter?
- SDK (Software Development Kit) : Alat alta untuk membantu proses pengembangan aplikasi
- Framework : Perlengkapan untuk membentuk aplikasi yang dapat dikustomisasi

Bagaimana membuat porject Flutter? Dilakukan dengan menjalankan perintah :
Flutter create <nama_project>

Menjalankan Project
- Masuk ke direktori project
- jalanlan perintah : flutter run

Struktur Direktori
a. Direktori platform :
- android
- ios
- web

b. direktori project : 
- lib : ruang kerja utama
- test - aktivitas pengujian

File utama 
- pertama kali dibaca dan dijalankan
- Dalam direktori lib, terdapat file bernama main.dart, memiliki fungsi main, menjalankan aplikasi dengan fungsi runApp

B. Widget
- Digunakan untuk membentuk antarmuka (UI)
- Berupa class
- Dapat terdiri dari beberapa widget lainnya

Jenis widget
a. Stateless
-Tidak bergantung pda perubahan data
- Hanya fokus pada tampilan
- Dibuat dengan extends pada class StatelessWidget

b. Stateful
- Memntikan pada perubahan data
- Dibuat dengan extends pada class StatefulWidget
- 1 widget menggunakan 2 class (widget dan state)

C. Build in Widget
- Widget yang dapat langsung digunakan
- Suda ter-install bersama Flutter

MaterialApp - Membangun aplikasi dengan desain material
Scaffold - Membentuk sebuah halaman
AppBar - Membnetuk application bar yang terletak pada bagian atas halaman