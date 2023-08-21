//1. buat sebuah function yang menghitung jumlah dari pembelian buku, pensil, dan tas
//2. buatlah function yang mehitung diskon dari variabel total pembelian.
//3. buatlah function yang menhitung Total pembelian setelah diskon

void main() {
  double buku = 10000;
  double pensil = 5000;
  double tas = 100000;

  double total_pembelian = buku + pensil + tas;
  double diskon = 0.1;

  double totalSetelahDiskon = hitungTotalSetelahDiskon(total_pembelian, diskon);

  print(
      "Total pembelian sebelum diskon: Rp${total_pembelian.toStringAsFixed(2)}");
  print("Diskon: ${diskon * 100}%");
  print(
      "Total pembelian setelah diskon: Rp${totalSetelahDiskon.toStringAsFixed(2)}");
}

double hitungTotalSetelahDiskon(double total, double diskon) {
  double potonganDiskon = total * diskon;
  return total - potonganDiskon;
}
