class Buku {
  int id;
  String judul;
  String penerbit;
  double harga;
  String kategori;

  Buku(this.id, this.judul, this.penerbit, this.harga, this.kategori);
}

class TokoBuku {
  List<Buku> daftarBuku = [];

  void tambahBuku(
      int id, String judul, String penerbit, double harga, String kategori) {
    Buku bukuBaru = Buku(id, judul, penerbit, harga, kategori);
    daftarBuku.add(bukuBaru);
  }

  List<Buku> semuaDataBuku() {
    return daftarBuku;
  }

  void hapusBuku(int id) {
    daftarBuku.removeWhere((buku) => buku.id == id);
  }
}

void main() {
  TokoBuku toko = TokoBuku();

  toko.tambahBuku(1, 'Harry Potter', 'Gramedia', 150000, 'Fiksi');
  toko.tambahBuku(2, 'Doraemon', 'Elex Media', 75000, 'Komik');
  toko.tambahBuku(3, "To Kill a Mockingbird", "HarperCollins", 200000, 'Fiksi');
  toko.tambahBuku(4, 'Dasar Pemrograman', 'acell media', 95000, 'Teknologi');
  toko.tambahBuku(5, 'Panduan Kebun Taman', 'GreenThumba', 65000, 'Pertanian');

  print('Semua data buku:');
  for (var buku in toko.semuaDataBuku()) {
    print(
        'ID: ${buku.id}, Judul: ${buku.judul}, Penerbit: ${buku.penerbit}, Harga: ${buku.harga}, Kategori: ${buku.kategori}');
  }

  toko.hapusBuku(1);

  print('\nData buku setelah menghapus:');
  for (var buku in toko.semuaDataBuku()) {
    print(
        'ID: ${buku.id}, Judul: ${buku.judul}, Penerbit: ${buku.penerbit}, Harga: ${buku.harga}, Kategori: ${buku.kategori}');
  }
}
