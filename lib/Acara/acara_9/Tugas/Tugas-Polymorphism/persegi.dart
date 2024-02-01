import 'bangun_datar.dart';

class Persegi extends BangunDatar {
  double sisi;

  Persegi(this.sisi);

  @override
  double hitungLuas() {
    return sisi * sisi;
  }

  @override
  double hitungKeliling() {
    return 4 * sisi;
  }
}
