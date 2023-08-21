void main() {
  for (int i = 1; i < 8; i++) {
    var bintang = ' ';
    for (int j = (7 - i); j >= 1; j--) {
      bintang += ' ';
    }
    for (int k = 1; k <= 2 * i - 1; k++) {
      bintang += "*";
    }

    print(bintang);
  }
}
