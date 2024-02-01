void main() {
  print("\n========= WHILE LOOP 1 =========\n");
  var flag = 1;
  while (flag < 10) {
    print("iterasi ke" + flag.toString());
    flag++; // Mengubah nilai flag dengan menambahkan 1
  }
  print("\n========= WHILE LOOP 2 =========\n");
  var deret = 5;
  var jumlah = 0;
  while (deret > 0) {
// Loop akan terus berjalan selama nilai deret masih di atas0jumlah += deret; // Menambahkan nilai variable jumlah denganangka deret
    deret--; // Mengubah nilai deret dengan mengurangi 1
    print('Jumlah saat ini: ' + jumlah.toString());
  }

  print("\n========= FOR LOOP 1 =========\n");
  for (var angka = 1; angka < 10; angka++) {
    print('Iterasi ke-' + angka.toString());
  }
  print("\n========= FOR LOOP 2 =========\n");
  var Jumlah = 0;
  for (var deret = 5; deret > 0; deret--) {
    Jumlah += deret;
    print('Jumlah saat ini: ' + Jumlah.toString());
  }
  print('Jumlah terakhir: ' + Jumlah.toString());
  print("\n========= FOR LOOP 3 =========\n");
  for (var deret = 0; deret < 10; deret += 2) {
    print('Iterasi dengan Increment counter 2: ' + deret.toString());
  }
  print('-------------------------------');
  for (var deret = 15; deret > 0; deret -= 3) {
    print('Iterasi dengan Decrement counter : ' + deret.toString());
  }
}
