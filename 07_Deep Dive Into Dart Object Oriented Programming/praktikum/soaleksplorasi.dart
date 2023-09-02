// Interface BangunDatar
abstract class BangunDatar {
  double getArea();
  double getParameter();
}

// Class Lingkaran
class Lingkaran implements BangunDatar {
  double jariJari;

  Lingkaran(this.jariJari);

  @override
  double getArea() {
    return 3.14 * jariJari * jariJari;
  }

  @override
  double getParameter() {
    return 2 * 3.14 * jariJari;
  }
}

// Class Segitiga
class Segitiga implements BangunDatar {
  double alas;
  double tinggi;
  double sisi1;
  double sisi2;
  double sisi3;

  Segitiga(this.alas, this.tinggi, this.sisi1, this.sisi2, this.sisi3);

  @override
  double getArea() {
    return 0.5 * alas * tinggi;
  }

  @override
  double getParameter() {
    return sisi1 + sisi2 + sisi3;
  }
}

// Class Persegi
class Persegi implements BangunDatar {
  double sisi;

  Persegi(this.sisi);

  @override
  double getArea() {
    return sisi * sisi;
  }

  @override
  double getParameter() {
    return 4 * sisi;
  }
}

void main() {
  // Membuat objek-objek bangun datar
  var lingkaran = Lingkaran(5);
  var segitiga = Segitiga(6, 8, 5, 7, 9);
  var persegi = Persegi(4);

  // Menampilkan hasil perhitungan luas dan keliling
  print("Luas Lingkaran: ${lingkaran.getArea()}");
  print("Keliling Lingkaran: ${lingkaran.getParameter()}");
  print("Luas Segitiga: ${segitiga.getArea()}");
  print("Keliling Segitiga: ${segitiga.getParameter()}");
  print("Luas Persegi: ${persegi.getArea()}");
  print("Keliling Persegi: ${persegi.getParameter()}");
}
