void main() {
  List<String> data = [
    'Rachael',
    'Ardian',
    'Rachael',
    'Nathasya',
    'Acell',
    'Acell',
    'Acell',
    'Nathasya',
    'Rachael'
  ];
  Map<String, int> frekuensi = {};

  for (var item in data) {
    frekuensi[item] = (frekuensi[item] ?? 0) + 1;
  }

  frekuensi.forEach((key, value) {
    print("$key: $value");
  });
}
