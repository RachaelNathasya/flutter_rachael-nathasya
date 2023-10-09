UI Testing
-  Pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi danmemberi respon kepada pengguna

UI Testing di Flutter
- Disebut juga widget testing sehingga pengujian dilakukan pada widgets dengan menuliskan script yang dapat dijalankan secara otomatis.

Keuntungan UI Testing
- Memastikan seluruh widget memberi tampilan yang sesuai
- Memastikan seluruh interaksi dapat diterima dengan baik
- Menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget

Melakukan UI Testing
Instalasi Package Testing
- Pada umumnya, package testing sudah ter-install sejak project pertama kali dibuat. Tetapi, cara ini dapat dilakukan, jika ingin meng-install secara manual

Penulisan Script Testing
- Dilakukan pada folder test
- Nama file harus diikuti _test.dart, contoh contact_test.dart
- Tiap file berisi fungsi main() yang di dalamnya dapat dituliskan script testing
- Tiap skenario pengujian disebut test case

Script Testing
- Test case diawali dengan testWidgets dan diberi judul
- Simulasi proses mengaktifkan halaman AboutScreen
- Memeriksa apakah di halaman tersebut terdapat teks "About Screen"

Menjalankan Testing
- Perintah flutter test akan menjalankan seluruh file test yang dibuat
- Hasil dari perintah ini adalah lamanya waktu pengujian, total pengujian yang dilakukan, dan pesan bahwa pengujian berhasil

Menjalankan Testing (Gagal) : Akan ditampilkan penyebab gagalnya pengujian


Output Build Flutter
Apa itu Output Build?
- File/berkas hasil keluaran dari project flutter
- Digunakan untuk merilis aplikasi ke App Store
- terdiri dari format APK atau AAB untuk Android dan IPA untuk iOS

Mode Build
- Mode debug
- Mode profile
- Mode release

Build APK
- Hanya dapat berjalan di Android
- Memiliki format .apk
- Dapat di install langsung pada perangkat Android

Proses Sebelum Build APK
- Mengatur nama aplikasi di AndroidManifest.xml
- Mengatur ikon aplikasi
- Mengatur perizinan aplikasi di AndroidManifest.xml

Persiapan
- Buat project baru beri nama counter_app

AnfroidManifest.xml
- File yang berisi informasi penting tentang aplikasi Android, seperti nama, komponen,permission, dan fitur hardware aplikasi
- Terletak di 3 folder untuk setiap mode build debug, release/main, dan profile

Mengatur Nama Aplikasi
- Ubah properti android:label pada AndroidManifest.xml yang ada di folder android/app/src/AndroidManifest.xml
- Stop dan jalankan ulang aplikasi

Mengatur Ikon Aplikasi
- Mengganti ic_launcher.png yang ada didalam folder android/app/src/main/res
- Men-generate ikon menggunakan Android Asset Studio
- Download zip file dari Android Asset Studio
- Unzip hasil download ic_launcher.zip dari Android Asset Studio
- Buka folder ic_launcher => buka folder res => Copy seluruh folder mipmap ke dalam folder res yang ada di project flutter menggantikan folder mipmap bawaan
- Stop dan jalankan ulang aplikasi

Mengatur Perizinan Aplikasi
- Menambahkan tag uses-permission
- Contoh perixinan seperti: Camera, Bluetooth, Internet, dll.

Melakukan Build APK
- Membuat file APK dengan mode debug dan profile
- Membuat file APK dengan mode release
- Jalankan ulang perintah flutter build apk --release

Output Build APK
- Output file.apk berada di folder build/app/outputs/apk/debug/app-debug.apk, build/app/outputs/apk/profile/app-profile.apk, build/app/outputs/apk/release/ app-release.apk.

Install Aplikasi pada Real Device
- Pindahkan file APK hasil build ke Smartphone Android dan lakukan proses instalasi
- Ubah pengaturan di hp android untuk pemasangan aplikasi tidak dikenal
- Jika ada notifikasi Play Protect diabaikan saja dan tetap install aplikasi

Build IPA
- Hasil output hanya dapat berjalan di iOS
- Memiliki format.ipa
- Perlu mendaftar akun Apple Developer Program
- Perintah build hanya dapat dijalankan pada perangkat Apple

Info.plist
- Tempat konfigurasi data informasi mengenal aplikasi iOS
- Berada di folder ios/Runner/info.plist
- Untuk mengatur nama aplikasi, ubah nama di dalam tag string dibawah key Bundle Name yang ada di info.plist

Mengatur ikon aplikasi
- Menggunakan website App Icon Generator
- Unzip hasil download AppIcons.zip
- Ganti folder AppIcon.appiconset pada folder ios/Runner/Assets.xcassets/AppIcon.appiconset

Melakukan Build IPA
- Perintah hanya dapat dijalankan pada perangkat apple/macOS
- Hasil output terletak pada folder build/ios/archive

Package Rename
- Buat project baru beri nama bonus

Langkah langkah
- Install package rename dengan menjalankan perintah di terminal flutter pub global active rename
- Jalankan perintah pada terminal flutter pub global run rename --appname "Nama Aplikasi", Nama aplikasi otomatis diubah untuk semua platform
- Stop dan jalankan ulang aplikasi

Package Flutter Launcher Icons
- Mengubah ikon aplikasi menggunakan flutter_launcher_icons

Langkah-langkah
- Buat folder assets di root project flutter
- Pindahkan file ikon beresolusi 1024 x 1024, dari folder ic_launcher Android Asset Studio sebelumnya ke dalam folder assets
- Tambahkan package flutter_launcher_icons di dev_dependencies (pubspec.yaml)
- Tambahkan flutter_icons di (pubspec.yaml dibawah dev_dependencies)
- Jalankan perintah flutter clean && flutter pub get && flutter pub run flutter_launcher_icons:main di yterminal
- Stop dan jalankan ulang aplikasi 

