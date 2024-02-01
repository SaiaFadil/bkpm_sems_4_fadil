// import 'package:bkpm_fadil/Acara/acara_9/Tugas/enkapsulasi.dart';

void main() {
  // Membuat objek dari class Lingkaran
  Lingkaran lingkaran = Lingkaran();

  // Mengatur nilai jari-jari dengan menggunakan setter
  lingkaran.jariJari = -5; // Nilai negatif akan diubah menjadi positif

  // Mendapatkan nilai jari-jari menggunakan getter
  print("Jari-jari lingkaran: ${lingkaran.jariJari}");

  // Menghitung dan mencetak luas lingkaran
  print("Luas lingkaran: ${lingkaran.hitungLuas()}");
}


class Lingkaran {
  // Variabel privat untuk menyimpan nilai jari-jari
  double _jariJari = 0.0;

  // Getter untuk mendapatkan nilai jari-jari
  double get jariJari => _jariJari;

  // Setter dengan validasi agar nilai jari-jari tetap positif
  set jariJari(double value) {
    if (value < 0) {
      _jariJari = -value;
    } else {
      _jariJari = value;
    }
  }

  // Method untuk menghitung luas lingkaran
  double hitungLuas() {
    return 3.14 * _jariJari * _jariJari;
  }
}
