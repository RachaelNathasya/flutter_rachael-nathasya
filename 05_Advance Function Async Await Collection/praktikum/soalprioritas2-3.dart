import 'dart:async';

void main() async {
  int n = 8; // Angka untuk perhitungan faktorial
  int hasil = await hitungFaktorial(n);
  print("Faktorial dari $n adalah $hasil");
}

Future<int> hitungFaktorial(int angka) async {
  if (angka == 0 || angka == 1) {
    return 1;
  } else {
    int faktorial = 1;
    for (int i = 2; i <= angka; i++) {
      faktorial *= i;
    }
    return faktorial;
  }
}
