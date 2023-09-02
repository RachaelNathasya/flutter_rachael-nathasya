Deep Dive Into Dart Object Oriented Programming

a. Constructor
- Method yang dijalankan saat pembuatan object
- Dapat menerima parameter
- Tidak memiliki return
- Nama sama dengan nama class

Memberi Constructor : Tambahkan method menggunakan nama sama dengan nama class

b. Inheritance
- Membuat class baru dengan memanfaatkan class yang sudah ada
- Bertujuan agar kemampuan class yang sudah ada dapat dimiliki oleh class baru

Melakukan Inheritance : Menambah extends saat pembuatan class baru

Penggunaan Class : Proses membuat object dari class yang terjadi inheritance seperti pembuatan object pada umumnya

c. Method Overriding
- Menulis ulang method yang ada pada super-class
- Bertujuan agar class memiliki method yang sama, dengan proses yang berbeda

Melakukan Overriding
• Dilakukan pada class yang melakukan
inheritance
• Method sudah ada pada class induk
• Method ditulis ulang seperti membuat method baru pada class anak
• Ditambahkan tanda @override di baris
sebelum method dibuat

d. Interface
- Berupa class
- Menunjukkan method apa saja yang ada pada suatu class
-  Seluruh method wajib di-override
- Digunakan dengan menggunakan implements

Menggunakan Interface
- Sekilas mirip inheritance
- Pada class yang melakukan implements. wajib melakukan override semua method yang ada pada class induk

e. Abstract Class
- Berupa class abstrak
- Menunjukkan method apa saja yang ada pada suatu class
- Digunakan dengan menggunakan extends
- Tidak dapat dibuat object
- Tidak semua method harus di-override

f. Polymorphism
- Kemampuan data berubah menjadi bentuk lain
- Tipe data yang dapat digunakan adalah super class
- Dapat dilakukan pada class dengan extends atau implements

g. Generics
- Dapat digunakan pada class atau fungsi
- Memberi kemampuan agar dapat menerima data dengan tipe yang berbeda
- Tipe data yang diinginkan, ditentukan saat membuat class atau menjalankan fungsi

Membuat Class dengan Generics
- Class Hadiah dapat dimasukkan data dengan tipe T
- Tipe T dapat digunakan di seluruh class Hadiah

h. Enkapsulasi
- ini mempromosikan penyembunyian data
- peningkatan integritas data
- Memungkinkan perubahan pada satu bagian kode tanpa memengaruhi bagian lain
- mengurangi kompleksitas dan potensi bug dalam kode


Modifikasi Akses dalam Dart
- Anggota publik Kata kunci public memungkinkan akses di mana saja

- Anggota Privat Awalan _private membatasi akses hanya dalam perpustakaan atau kelas

- Anggota Dilindung: Dart tidak memiliki kata kunci protected secara alami, tetap secara konvensional, awalan _protected menunjukkan akses terbatas dalam perpustakaan.

Getter dan Setter
- Getter dan setter adalah metode yang memungkinkan akses terkontrol variabel privat
- Mereka memungkinan enkapsulasi dengan menyediakan cara untuk membaca dan memodifikasi data privat, memastikan validasi atau perhitungan saat diperlukan