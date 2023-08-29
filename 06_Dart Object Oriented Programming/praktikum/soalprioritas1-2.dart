class Hewan {
  double berat;

  Hewan(this.berat);
}

class Mobil {
  double kapasitas;
  double totalBeratMuatan = 0;
  List<Hewan> muatan = [];

  Mobil(this.kapasitas);

  void tambahMuatan(Hewan hewan) {
    if (totalBeratMuatan + hewan.berat <= kapasitas) {
      muatan.add(hewan);
      totalBeratMuatan += hewan.berat;
      print("Hewan ditambahkan ke dalam muatan.");
    } else {
      print("Kapasitas muatan tidak mencukupi.");
    }
  }

  double totalMuatan() {
    return totalBeratMuatan;
  }
}

void main() {
  Mobil mobil = Mobil(500);

  Hewan anjing = Hewan(300);
  mobil.tambahMuatan(anjing);

  print("Total muatan dalam mobil: ${mobil.totalMuatan()} kg");
}
