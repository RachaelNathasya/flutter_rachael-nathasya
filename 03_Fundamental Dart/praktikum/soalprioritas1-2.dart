import 'dart:math';

void main() {
  double jariJari = 21; // Ubah nilai jari-jari sesuai kebutuhan
  double keliling = hitungKeliling(jariJari);
  double luas = hitungLuas(jariJari);

  print("Keliling lingkaran: $keliling");
  print("Luas lingkaran: $luas");
}

double hitungKeliling(double jariJari) {
  return 2 * pi * jariJari;
}

double hitungLuas(double jariJari) {
  return pi * jariJari * jariJari;
}
