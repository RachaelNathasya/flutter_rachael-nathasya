double hitungLuasLingkaran(double jariJari) {
  return 22 / 7 * jariJari * jariJari;
}

void main() {
  double jariJariLingkaran = 49;
  double luas = hitungLuasLingkaran(jariJariLingkaran);
  print("Luas lingkaran dengan jari-jari $jariJariLingkaran adalah $luas");
}
