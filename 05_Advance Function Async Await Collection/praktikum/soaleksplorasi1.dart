void main() {
  List<String> nilai = [
    "Rachael",
    "Acell",
    "Ardian",
    "Rachael",
    "Nathasya",
    "Shintia",
    "Ian",
    "Ardian"
  ];
  List<String> namaUnik = [];

  for (var namaIndividu in nilai) {
    if (!namaUnik.contains(namaIndividu)) {
      namaUnik.add(namaIndividu);
    }
  }

  print("Nama unik: $namaUnik");
}
