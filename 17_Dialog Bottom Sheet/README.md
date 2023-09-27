Dialog & Bottom Sheet

Aplikasi task Management
- Menambahkan dan menghapus kegiatan
- Membuat model untuk informasi yang mau disimpan, buat folder models dan di dalamnya buat file dart baru task_model.dart
- Membuat task scree , buat folder screens di dalamnya buat file dart baru task_screen.dart
- Membuat Empty Screen, buat file dart baru empty_task_screen.dart di folder screens
- Tambahkan package provider di pubspec.yaml
- Membuat Task Manager, buat file dart baru task_manager.dart di dalam folder models. Tambahkan method deleteTask dan addTask
- (main.dart) menambahkan TaskManager sebagai provider
- (task_screen.dart) membuat fungsi buildTaskScreen, akan me-return antara Task Screen yang ada datanya atau yang kosong dan panggil fungsi nya di body 
- Membuat Task Item Screen, buat file dart baru task_item_screen.dart di dalam folder screens dan tambahkan properti onCreate
- (task_screen.dart) buat FloatingActionButton, untuk navigasi ke TaskItemScreen
- (task_item_screen.dart) menambahkan state properti iniState, dan dispose
- (task_item_screen.dart) membuat buildNameField dan panggil fungsi nya di dalam ListView
- (task_item_screen.dart) membuat buildButton dan panggil fungsinya di dalam ListView
- Membuat Task Item Card, buat folder baru components lalu didalam nya buat file dart baru task_item_card.dart
- (task_item_screen.dart) menambahkan call back handler di elevatedButton pada buildButton, dan menambahkan package uuid
- Membuat Task List Screen, dalam folder screens buat file dart baru task_list_screen.dart. Dan tambahkan di buildTaskScreen(task_screen.dart)
- (task_list_screen.dart) menambahkan properti yang dibutuhkan pada TaskItemCard untuk melihat task yang sudah dibuat


AlertDialog
- Untuk tampilan android, dari material design
- Menginformasikan pengguna tentang situasi tertentu
- Bisa digunakan untuk mendapatkan input dari user
- Membutuhkan helper method showDialog

Cara Membuat AlertDialog
-(task_item_card.dart) menambahkan Alert Dialog
- Memanggil fungsi showDialog di dalam fungsi onPressed pada IconButton
- showDialog membutuhkan context dan builder
- Di buildernya akan me-return AlertDialog
- AlertDialog menyediakan properti seperti content dan actions
- Content bisa dimasukan widget text, gambar dan animasi gambar
- Actions bisa ditambahkan button untuk menerima respon dari user
- (task_item_card.dart) membuat properti onPressed
- (task_list_screen.dart) menambahkan fungsi onPressed pada TaskItemCard, pada body fungsinya tambahkan method deleteTask, Navigator.pop(context), dan scaffoldMessenger

Hasil akhir
- Ketika icon delete ditekan maka akan menampilkan alert dialog 

Bottom Sheet
- Seperti dialog tetapi muncul dari bawah layar aplikasi
- Menggunakan fungsi bawaan flutter showModalBottomSheet
- Membutuhkan dua properti, yaitu context dan builder

Cara membuat Bottom Sheet
- (task_screen.dart) membuat Bottom Sheet
- buat file dart baru profile_sheet.dart didalam folder components dan buat konten konten nya
- (task_screen.dart) Mengganti Container pada builder showModalBottomSheet menjadi ProfileSheet()
