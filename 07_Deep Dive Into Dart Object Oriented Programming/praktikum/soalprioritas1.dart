class BangunRuang {
  double panjang;
  double lebar;
  double tinggi;

  BangunRuang(this.panjang, this.lebar, this.tinggi);

  double volume() {
    return 0.0;
  }
}

class Kubus extends BangunRuang {
  Kubus(double sisi) : super(sisi, sisi, sisi);

  @override
  double volume() {
    return panjang * panjang * panjang;
  }
}

class Balok extends BangunRuang {
  Balok(double panjang, double lebar, double tinggi)
      : super(panjang, lebar, tinggi);

  @override
  double volume() {
    return panjang * lebar * tinggi;
  }
}

void main() {
  BangunRuang bangun = Kubus(5.0);
  print("Volume Kubus: ${bangun.volume()}");

  bangun = Balok(3.0, 4.0, 5.0);
  print("Volume Balok: ${bangun.volume()}");
}
