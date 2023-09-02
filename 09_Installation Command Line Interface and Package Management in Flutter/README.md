Installation Command Line Interface and Package Management in Flutter

A. Flutter CLI
- Alat yang digunakan untuk berinteraksi dengan Flutter SDk
- Perintah dijalankan dalam terminal

Important CLI Commands
- FLutter Doctor : Perintah untuk menampilkan informasi software yang dibutuhkan flutter (flutter doctor)
- Flutter Create : Perintah untuk membuat project aplikasi flutter baru di directory tertentu (flutter create <APP_NAME>)
- Flutter Run : Perintah untuk menjalankan project aplikasi di device yang tersedia (flutter run <DART_FILE>)
- Flutter Emulator : Perintah untuk menampilkan daftar emulator yang terinstall dan menampilkan option untuk membuka emulator atau membuat emulator baru (flutter emulators)(flutter emulators --launch <EMULATOR_ID>)(flutter emulators --create[--name xyz])
- Flutter Channel : Perintah untuk menampilkan daftar flutter channel yang tersedia dan menunjukan channel yang digunakan saat ini (flutter channel)
- Flutter Pub :
- Flutter Build : Perintah untuk memproduksi sebuah file aplikasi untuk keperluan deploy atau publish ke AppStore, PlayStoe, dll (flutter build <DIRECTORY>)
- Flutter Clean : Perintah untuk menghapus folder build serta file lainnya yang dihasilkan saat kita menjalankan aplikasi di emulator, perintah ini akan memperkecil ukuran project tersebut (flutter clean)

B. Packages Management
- Flutter mendukung sharing packages
- Packages dibuat developers lain
- Mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau from scracth
- Mendapatkan packages di website pub.dev

Cara menambahkan Packages
- Cari package di pub.dev
- Copy baris dependencies yang ada di bagian installing
- Buka pubspec.yaml 
- Paste barisnya dibawah dependencies pubspec.yaml
- Run flutter pub get di terminal atau CTRL + S
- Import package di file dart agar bisa digunakan
- Stop atau restart aplikasi jika dibutuhkan


C. Membuat Project Dart
Step 1 : Pada bagian menu Bar, pilih View -> Command Palette
Step 2 : Pilih Console Application, lalu tentukan dimana kita ingin menyimpan project Dart nya
Step 3 : Ketikan nama project Dartnya, lalu tekan enter
Step 4 : Menjalankan project Dart

D. Membuat Project Flutter
Step 1 : Pada bagian menu Bar, pilih View -> Command Palette atau CTRL + SHIFT + P
Step 2 : Pilih Apllication, lalu tentukan dimana kita ingin menyimpan project Flutter nya
Step 3 : Ketikan nama project Flutter nya, lalu tekan enter

D. Membuat Android Emulator
Step 1 : Buka Android Studio, klik More Actions -> Virtual Device Manager
Step 2 : Klik Create device, lalu akan muncul list device yang bisa dibuat
Step 3 : Download System Image
Step 4 : Klik Finish -> klik next
Step 5 : Biarkan pengaturannya secara default, lalu klik Finish
Step 6 : Menjalankan emulator dari Visual studio Code
Step 7 : Emulator berhasil dijalankan
Step 8 : Menjalankan project flutter pada emulator