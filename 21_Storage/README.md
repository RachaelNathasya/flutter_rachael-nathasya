Storage

Penyimpanan Lokal
- Diperlukan untuk efisiensi penggunaan data internet
- Ada beberapa cara implementasi penyimpanan lokal,
Contohnya : Shared Preferences, Local Database

Shared Preference
- Menyimpan data yang sederhana
- Penyimpanan dengan format key-value
- Menyimpan tipe data dasar seperti tesk, angka, dan boolean
- Contoh penggunaan : Menyimpan data login dan menyimpan riwayat pencarian

Implementasi Shared Preference
- Menambahkan shared preference pada fitur login
- Tambahkan package shared_preference pada pubspec.yaml
- Buat properti baru untuk TextEditingController dan tambahkan di setiap TextFormField
- Buat method dispose(), untuk menghindari kebocoran memori
- Buat variabel baru untuk menyimpan SharedPreference dan nilai bool newUser
- Buat method baru dengan nama checkLogin()
- Panggil method checkLogin() di method initState()
- Didalam onPressed ElevatedButton, buat variabel baru username untuk menampung input dari user
- Buat setBool dan setString baru didalam blok kode if, dan buat navigasi untuk ke halaman HomePage
- Buat file dart baru home_page.dart dan tambahkan UI nya
- (home_page.dart) buat variabel baru untuk menyimpan SharedPreference dan username
- (home_page.dart) buat method baru initial(), dan panggil di method initState()
- (home_page.dart) mengganti text 'username' menjadi variabel username
- (home_page.dart) tambahkan method setBool dan remove pada ElevatedButton
- Hasil akhir ketika menekan login maka akan masuk ke home page dan menampilkan text username sesuai yang di inputkan di text form field

Aplikasi Task Management (Continue)
Menambahkan Fitur Login
- Menambahkan login screen pada aplikasi Task Management, dan menambahkan shared_preference package, dan email_validator package
- (main.dart) mengganti home ,menjadi routes
- (profile_sheet.dart) menambahkan kode untuk shared preference di profile sheet

Local Database (SQLite) 
- Memyimpan dan meminta data dalam jumlah besar pada local device
- Bersifat privat
- Menggunakan SQLite database melalui package sqflite
- SQLite adalah database open source yang mendukung insert, read, update dan remove data

Implementasi SQLite
- Menambahkan package sqflite dan path (pubspec.yaml), pastikan import packages nya di file dart yang kita kerjakan
- (task_model.dart) membuat model/modifikasi model yang sudah ada, dan membuat fungsi toMap dan fromMap
- Buat folder baru helper, dan di dalamnya buat file dart baru database_helper.dart
- (database_helper.dart) buat kelas baru DatabaseHelper dan tambahkan factory constructor
- (database_helper.dart) membuat objek database
- (database_helper.dart) membuka koneksi ke database dan membuat tabelnya
- (database_helper.dart) membuat method untuk menambahkan data ke tabel
- (database_helper.dart) membuat method untuk membaca data
- (database_helper.dart) membuat method untuk mengambil data dengan id
- (database_helper.dart) membuat method untuk memperbarui data
- (database_helper.dart) membuat method untuk menghapus data
- membuat file dart baru db_manager.dart
- (db_manager.dart) membuat constructor untuk membuat instance kelas DatabaseHelper
- (db_manager.dart) membuat method _getAllTasks
- (db_manager.dart) membuat method addTask, getTaskByld, updateTask, dan deleteTask
- (main.dart) mengganti provider nya menjadi DbManager
- (task_screen.dart) mengganti Consumer yang ada di buildTaskScreen jadi DbManager
- (task_screen.dart) mengganti kode yang ada di onPressed FloatingActionButton
- (task_screen_screen.dart) menghapus properti onCreate dan membuat properti baru taskModel
- (task_item_screen.dart) hapus properti _taskName, buat properti baru _isUpdate, dan ganti kode pada blok method initState()
- (task_item_screen.dart) ganti kode yang ada di blok kode onPressed buildButton()
- (task_list_screen.dart) ganti TaskManager jadi DbManager
- (task_list_screen.dart) bungkus ListView.separated dengan Consumer<DbManager>(). Dan pindahkan variabel taskItems di dalam builder Consumer
- (task_list_screen.dart) hapus key yang ada di widget TaskItemCard. Dan ganti index untuk deleteTask nya menggunakan item.id!
- (task_list_screen.dart) bungkus widget TaskItemCard dengan widget InkWell dan gunakan onTap dengan fungsi async. Di dalam blok fungsi nya tambahkan variabel selectedTask yang menampung item.id!, dan tambahkan navigasi ke TaskItemScreen