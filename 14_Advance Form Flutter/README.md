Advance Form Input 

a. Interactive Widgets
- Interaksi antara aplikasi dan user
- Mengumpulkan input dan feedback dari user

Menambahkan Layout
- Layout unuk menyusun interactive widget

b. Data Picker
- Widget dimana user bisa memasukan tanggal
- Tanggal kelahiran, waktu pemesanan tiket, waktu reservasi restoran, jadwal meeting, dll

Cara membuat Date Picker
- Menggunakan fungsi bawaan flutter shoDatePicker
- Fungsi showDatePicker memiliki tipe data future
- Menampilkan dialog material design date picker

Cara membuat Date Picker
- menambahkan packages inti di pubspec.yaml
- mempersiapkan variabel
- Membangun UI
- Menambahkan fungsi showDatePicker di dalam onPressed
- Memanggil fungsi setState di dalam onPressed

Hasil Akhir
- saat select button di tekan akan  muncul dialog date picker
- Tanggak yang ada di UI akan berubah sesuai dengan tanggal yang dipilih

c. Color Picker
- Widget dimana user bisa memilih color
- Penggunaan color picker bisa digunakan untuk berbagai macam kondisi

Cara membuat Color Picker
- Menggunakan packages flutter_collorpicker
- Menambahkan packages flutter_colorpicker di pubspec.yaml
- Mempersiapkan variabel
- Membangun UI
- Menambahkan fungsi showDialog di dalam onPressed dengan return widget AlertDialog
- import packages flutter_colorpicker dalam file dart
- Membuat kode untuk penggunaan packages flutter_colorpicker
Packages flutter_colorpicker memiliki custom widget yang dapat digunakan, seperti BlockPicker, ColorPicker, dan SlidePicker

d.File Picker
- Kemampuan widget untuk mengakses storage
- Memilih dan membuka file

Cara membuat file picker
- Menggunakan packages file_picker dan open_file
- Menambahkan packages file_picker dan open_file dalam file dart
- Membangun UI
- Membuat fungsi untuk mengexplore dan memilih files dari storage
- Memanggil fungsi_pickFile di dalam onPressed
- Membuat fungsi untuk membuka files yang telah dipilih
- Mengambil file dari object result dan memanggil fungsi _openFile di dalam fungsi _pickFile
- Ketika button ditekan maka akan membuka storage device dan file yang dipilih akan terbuka