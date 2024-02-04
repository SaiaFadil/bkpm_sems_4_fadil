import 'package:bkpm_fadil/Acara/beranda_tugas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(pertama());
}

class pertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) =>
            page_beranda(), 
      },
    );
  }
}