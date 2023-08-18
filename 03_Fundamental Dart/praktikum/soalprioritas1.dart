// Persegi
double hitungLuasPersegi(double sisi) {
  return sisi * sisi;
}

double hitungKelilingPersegi(double sisi) {
  return 4 * sisi;
}

// Persegi Panjang
double hitungLuasPersegiPanjang(double panjang, double lebar) {
  return panjang * lebar;
}

double hitungKelilingPersegiPanjang(double panjang, double lebar) {
  return 2 * (panjang + lebar);
}

void main() {
  double sisiPersegi = 10;
  double panjangPersegiPanjang = 20;
  double lebarPersegiPanjang = 5;

  double luasPersegi = hitungLuasPersegi(sisiPersegi);
  double kelilingPersegi = hitungKelilingPersegi(sisiPersegi);

  double luasPersegiPanjang =
      hitungLuasPersegiPanjang(panjangPersegiPanjang, lebarPersegiPanjang);
  double kelilingPersegiPanjang =
      hitungKelilingPersegiPanjang(panjangPersegiPanjang, lebarPersegiPanjang);

  print('Luas Persegi: $luasPersegi');
  print('Keliling Persegi: $kelilingPersegi');

  print('Luas Persegi Panjang: $luasPersegiPanjang');
  print('Keliling Persegi Panjang: $kelilingPersegiPanjang');
}
