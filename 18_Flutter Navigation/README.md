Flutter Navigation

Apa itu Navigation?
- Berpindah dari halaman satu ke halaman lain atau Cara untuk memindahkan pengguna anatar berbagai laya atau halaman dalam aplikasi flutter

Navigation Dasar
- Perpindahan halaman menggunakan Navigator.push()  => Go
- Kembali ke halaman sebelumnya menggunakan Navigator.pop()  <= Back

Mengirim Data ke Halaman Baru
- Menggunakan parameter pada constructor halaman

Navigator dengan Named Routes
// Tiap halaman memiliki alamat yang disebut route

- Perpindahan halaman menggunakan Navigator.pushNamed() => Go

- Kembali ke halaman sebelumnya menggunakan Navigator.pop()  <= Back

Mendaftarkan Route
- Tambahkan initialRoute dan routes pada MaterialApp
- Tiap route adalah fungsi yang membentuk halaman

Perpindahan halaman
Mengirim data ke Halaman Baru
-Menggunakan arguments saat melakukan pushNamed