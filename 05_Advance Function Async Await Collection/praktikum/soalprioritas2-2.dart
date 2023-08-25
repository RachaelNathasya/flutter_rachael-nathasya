import 'dart:math';

void main() {
  List<double> nilai = [85.5, 92.0, 78.3, 90.7, 88.2, 67.0, 95.5];
  double total = 0;

  for (var nilaiIndividu in nilai) {
    total += nilaiIndividu;
  }

  double rataRata = total / nilai.length;
  int rataRataBulat = rataRata.ceil();

  print("Nilai rata-rata: $rataRataBulat");
}
