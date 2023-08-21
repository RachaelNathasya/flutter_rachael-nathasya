Branch, Loop, Function Dart

1. Pengambilan Keputusan : Menentukan alur program pada kondisi tertentu
- IF : Memerlukan nilai bool (dari operator logical atau comparison), Menjalankan bagian prosen jika nilai bool bernilai true

Dituliskan: 
if (nilai_bool){
    //proses jika nilai_bool adalah true
}

- IF-ELSE : Berjalan dengan if, Menambah alternatif jika nilai bool adalah false

Dituliskan:
if (nilai_bool) {
    //proses jika nilai true
} else {
    //proses jika nilai false
}

- Sisipan ELSE-IF : Berjalan dengan if, Menambah alternatif jika nilai bool adalah false, Menambah pengujian nilai bool lain

Ditulikan : 
if (nilai_bool) {
    //proses jika nilai true
} else if (nilai_bool) {
    //proses jika nilai false
    //dan nilai true
}

2. Perulangan : Mejalankan proses berulang kali
a. For 
- Diketahui berapa kali perulangan terjadi
- Memerlukan nilai awal
- Memerlukan nilai bool, jika true maka perulangan dilanjutkan
- Memerlukan pengubah nilai

b. While
- Tidak diketahui berapa kali perulangan terjadi
- Memerlukan nilai bool, jika true maka perulangan dilanjutkan

c. Do While
- Mengubah bentuk while
- Proses dijalankan minimum sekali, akan diteruskan jika nilai bool adalah true

3. Break dan Continue : Cara lain menghentikan perulangan
- Perulangan menggunakan nilai bool untuk lanjut atau berhenti
- Break dan continue dapat menghentikan perulangan dengan mengabaikan nilai bool
- Continue dapat menghentikan satu kali proses

- Perbedaan Break dan Continue
Break menghentikan seluruh proses perulangan sedangkan Continue menghentikan satu kali proses perulangan

4. Fungsi : Kumpulan kode yang dapat digunakan ulang
- Kumpulan perintah
- Dapat digunakan berkali-kali
- Cukup mengubah fungsi sekali, penggunaan lainnya akan ikut berubah

a. fungsi dengan parameter : mengirim data saat menjalankan fungsi
b. fungsi dengan Return : memberi nilai pada fungsi saat dipanggil