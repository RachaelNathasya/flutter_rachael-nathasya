Assets

Assets
- FIle yang di bundled dan di deployed bersamaan dengan aplikasi

Tipe-tipe assets :
- static data (JSON files)
- icons
- images
- font file (ttf)

Menentukan Assets
- Flutter menggunakan pubspec.yaml
- Pubspec.yaml terletak pada root project, untuk mengidentifikasi assets yang dibutuhkan aplikasi
- Gunakan karakter "/" untuk memasukkan semua assets dibawah satu directory name

Image
- Image atau gambar akan membuat tampilan aplikasi menjadi lebih menarik
- Flutter mendukung format gambar seperti JPEG, WebP, GIF, Animated WEB/GIF, PNG, BMP, WBMP
- Menampilakn gambar dari project asset dan internet

Loding images
- Gunakan widget image
- Membutuhkan properti image dengan nilai class AsserImage()
- Menggunakan method Image.asset, mendapatkan image yang sudah ditambahkan dalam project
- Menggunakan method Image.network, ,mendapatkan data image melalui internet dengan menggunakan string url nya

Font
- Penggunaan font dengan style tertentu akan  menjadi keunikan pada aplikasi
- penentuan font yang mau dipakai biasanya oleh UI designer
- Penerapan font menggunakan custom font atau dari package

Custom Font
cara menggunakan custom font :
- Cari dan download font (https://fonts.google.com/)
- import file .ttf
- Daftarkan font di pubspec.yaml
- Mengatur font sebagau default
- Gunakan font di spesifik widget

Font dari Package
Cara menggunakan font dari package:
- Tambahkan package google_fonts di dependencies
- Import package di file.dart
- Gunakan font dengan memanggil GoogleFonts.namaFont()

Aplikasi Task Management (Continue)
Menambahkan Image 
- Menambahkan image pada empty_task_screen.dart
- Membuat profile picture di profile_sheet.dart, menggunakan widget CircleAvatar
- Menambahkan font pada setiap text
Menambahkan Konten
- (profile_sheet.dart) menambahkan konten lain
- (empty_task_screen.dart) menambahkan text di bawah image empty screen
