void main() {
  print("\n== STRING ==\n");
  var sentences = "dart";
  print(sentences[0]); // "d"
  print(sentences[2]); // "r"
  print("\n== NUMBER ==\n");
  int num1 = 10;
  double num2 = 10.50;
  print(num1); //10
  print(num2); //10.5
  print("\n== STRING TO INT ==\n");
  print(num.parse('12')); //12
  print(num.parse('10.91')); //10.91
  print("\n== INT TO STRING ==\n");
  int j = 45;
  String t = "$j";
  print("hello" + t);
}
