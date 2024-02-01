import 'bangun_datar.dart';

class Segitiga extends BangunDatar {
  double alas;
  double tinggi;
  double sisiA;
  double sisiB;

  Segitiga(this.alas, this.tinggi, this.sisiA, this.sisiB);

  @override
  double hitungLuas() {
    return 0.5 * alas * tinggi;
  }

  @override
  double hitungKeliling() {
    return alas + sisiA + sisiB;
  }
}
