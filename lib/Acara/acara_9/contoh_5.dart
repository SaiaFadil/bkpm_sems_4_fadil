void main() {
  tampilkanAngka(5);
}

void tampilkanAngka(int n1, {int s1 = 45}) {
  print(n1); // hasilnya akan 5 karena inisialisasi 5 di dalam value tampilkan
  print(s1); // hasilnya adalah 45 karena dari parameter diisi 45
}
