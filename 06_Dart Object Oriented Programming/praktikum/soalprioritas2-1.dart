class Calculator {
  double tambah(double a, double b) {
    return a + b;
  }

  double kurang(double a, double b) {
    return a - b;
  }

  double kali(double a, double b) {
    return a * b;
  }

  double bagi(double a, double b) {
    if (b != 0) {
      return a / b;
    } else {
      throw ArgumentError("Pembagian dengan nol tidak valid.");
    }
  }
}

void main() {
  Calculator calculator = Calculator();

  double hasilTambah = calculator.tambah(5, 3);
  print("Hasil penjumlahan: $hasilTambah");

  double hasilKurang = calculator.kurang(10, 4);
  print("Hasil pengurangan: $hasilKurang");

  double hasilKali = calculator.kali(7, 2);
  print("Hasil perkalian: $hasilKali");

  try {
    double hasilBagi = calculator.bagi(15, 3);
    print("Hasil pembagian: $hasilBagi");
  } catch (e) {
    print("Error: $e");
  }
}
