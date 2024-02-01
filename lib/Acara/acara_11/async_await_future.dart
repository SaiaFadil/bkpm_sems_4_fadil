
void main(List<String> args) {
  print("Persiapan. mulai");
  print(line());
  print(line2());

}

Future<String> line()async{
String greeting = "pagiku cerah matahari bersinar...";
return await Future.delayed(Duration(seconds: 5),()=>(greeting));
}
Future<String> line2()async{
String greeting = "kugendong tas merahku,di pundak...";
return await Future.delayed(Duration(seconds: 3),()=>(greeting));
}