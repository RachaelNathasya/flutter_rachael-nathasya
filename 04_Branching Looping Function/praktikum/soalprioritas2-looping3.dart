int hitungFaktorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * hitungFaktorial(n - 1);
  }
}

void main() {
  List<int> nilaiNilai = [10, 40, 50];

  for (int nilai in nilaiNilai) {
    int faktorial = hitungFaktorial(nilai);
    print("Faktorial dari $nilai adalah $faktorial");
  }
}
