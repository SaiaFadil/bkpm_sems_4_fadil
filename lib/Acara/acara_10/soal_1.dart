import 'dart:async';

void main() async {
  // Fungsi synchronous
  print("Synchronous:");
  printCharactersSync();

  // Fungsi asynchronous dengan async, await, dan Future
  print("\nAsynchronous:");
  await printCharactersAsync();
  await printUserData();
}

// Fungsi synchronous untuk mencetak karakter One Piece
void printCharactersSync() {
  print("Luffy");
  print("Zoro");
  print("Killer");
}

// Fungsi asynchronous untuk mencetak karakter One Piece dengan Future
Future<void> printCharactersAsync() async {
  await Future.delayed(Duration(seconds: 3));
  print("Get data [done]");
  print("Name 3: Hilmy");
}

// Fungsi asynchronous untuk mencetak data user dengan Future
Future<void> printUserData() async {
  print("User data [done]");
  print("ID: 123");
  print("Username: hilmy");
}
