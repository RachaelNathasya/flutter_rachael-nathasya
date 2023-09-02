class Matematika {
  int x;
  int y;

  Matematika(this.x, this.y);

  int kelipatanPersekutuanTerkecil() {
    int max = (x > y) ? x : y;
    while (true) {
      if (max % x == 0 && max % y == 0) {
        return max;
      }
      max++;
    }
  }

  int faktorPersekutuanTerbesar() {
    int a = x;
    int b = y;
    while (b != 0) {
      int temp = b;
      b = a % b;
      a = temp;
    }
    return a;
  }

  void hasil() {
    print('Kelipatan Persekutuan Terkecil: ${kelipatanPersekutuanTerkecil()}');
    print('Faktor Persekutuan Terbesar: ${faktorPersekutuanTerbesar()}');
  }
}

void main() {
  Matematika operation = Matematika(12, 18);
  operation.hasil();
}
