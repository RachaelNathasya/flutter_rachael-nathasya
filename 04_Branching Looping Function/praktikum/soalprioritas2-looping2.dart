import 'dart:io';

void main() {
  int jumlah = 7;
  polaJamPasir(jumlah);
}

void polaJamPasir(int tinggi) {
  for (int i = 1; i <= tinggi; i++) {
    for (int j = 1; j <= tinggi * 2 - 1; j++) {
      if (j >= i && j <= tinggi * 2 - i) {
        stdout.write('0');
      } else {
        print('');
      }
    }
  }
  for (int i = tinggi - 1; i >= 1; i--) {
    for (int j = 1; j <= tinggi * 2 - 1; j++) {
      if (j >= i && j <= tinggi * 2 - i) {
        stdout.write('0');
      } else {
        print('');
      }
    }
  }
}
