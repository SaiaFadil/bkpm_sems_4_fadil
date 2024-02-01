import 'bangun_datar.dart';
import 'segitiga.dart';
import 'persegi.dart';
import 'lingkaran.dart';

void main() {
  // Objek dari kelas BangunDatar
  BangunDatar bangunDatar = BangunDatar();
  print("Luas Bangun Datar: ${bangunDatar.hitungLuas()}");
  print("Keliling Bangun Datar: ${bangunDatar.hitungKeliling()}");

  // Objek dari kelas Segitiga
  Segitiga segitiga = Segitiga(3, 4, 5, 6);
  print("Luas Segitiga: ${segitiga.hitungLuas()}");
  print("Keliling Segitiga: ${segitiga.hitungKeliling()}");

  // Objek dari kelas Persegi
  Persegi persegi = Persegi(7);
  print("Luas Persegi: ${persegi.hitungLuas()}");
  print("Keliling Persegi: ${persegi.hitungKeliling()}");

  // Objek dari kelas Lingkaran
  Lingkaran lingkaran = Lingkaran(8);
  print("Luas Lingkaran: ${lingkaran.hitungLuas()}");
  print("Keliling Lingkaran: ${lingkaran.hitungKeliling()}");
}
