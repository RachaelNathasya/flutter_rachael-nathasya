String hitungNilai(int nilai) {
  if (nilai > 70) {
    return "A";
  } else if (nilai > 40) {
    return "B";
  } else if (nilai > 0) {
    return "C";
  } else {
    return "";
  }
}

void main() {
  int nilaiTes = 95; // Ganti dengan nilai yang diinginkan
  String hasil = hitungNilai(nilaiTes);
  print("Anda mendapatkan Nilai : $hasil");
}
