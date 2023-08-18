void main() {
  double sisiSegitiga1 = 3;
  double sisiSegitiga2 = 2;
  double sisiSegitiga3 = 5;
  double panjangPersegiPanjang = 10;
  double lebarPersegiPanjang = 9;

  double kelilingSegitiga = sisiSegitiga1 + sisiSegitiga2 + sisiSegitiga3;
  double kelilingPersegiPanjang =
      2 * (panjangPersegiPanjang + lebarPersegiPanjang);

  print("Keliling segitiga: $kelilingSegitiga");
  print("Keliling persegi panjang: $kelilingPersegiPanjang");
}
