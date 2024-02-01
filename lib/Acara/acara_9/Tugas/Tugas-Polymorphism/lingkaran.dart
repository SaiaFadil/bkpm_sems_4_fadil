import 'bangun_datar.dart';

class Lingkaran extends BangunDatar {
  double jariJari;

  Lingkaran(this.jariJari);

  @override
  double hitungLuas() {
    return 3.14 * jariJari * jariJari;
  }

  @override
  double hitungKeliling() {
    return 2 * 3.14 * jariJari;
  }
}
