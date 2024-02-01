import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main() {
  // Inisialisasi objek dari masing-masing kelas
  ArmorTitan armorTitan = ArmorTitan();
  AttackTitan attackTitan = AttackTitan();
  BeastTitan beastTitan = BeastTitan();
  Human human = Human();

  // Set nilai powerPoint untuk masing-masing objek
  armorTitan.powerPoint = 8;
  attackTitan.powerPoint = 6;
  beastTitan.powerPoint = 7;
  human.powerPoint = 9;

  // Menampilkan nilai powerPoint untuk masing-masing objek
  print("PowerPoint Armor Titan: ${armorTitan.powerPoint}");
  print("PowerPoint Attack Titan: ${attackTitan.powerPoint}");
  print("PowerPoint Beast Titan: ${beastTitan.powerPoint}");
  print("PowerPoint Human: ${human.powerPoint}");

  // Menampilkan aksi dari masing-masing objek
  print("Armor Titan Terjang: ${armorTitan.terjang()}");
  print("Attack Titan Punch: ${attackTitan.punch()}");
  print("Beast Titan Lempar: ${beastTitan.lempar()}");
  print("Human Kill All Titan: ${human.killAllTitan()}");
}
