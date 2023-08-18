import 'dart:math';

void main() {
  double jariJari = 7;
  double tinggi = 15;

  double volume = VolTabung(jariJari, tinggi);
  print("Volume tabung: $volume");
}

double VolTabung(double jariJari, double tinggi) {
  return pi * jariJari * jariJari * tinggi;
}
