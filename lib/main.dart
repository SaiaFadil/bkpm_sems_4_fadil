import 'package:bkpm_fadil/Acara/beranda_tugas.dart';
import 'package:flutter/material.dart';
import 'package:bkpm_fadil/Acara/acara_18/routes.dart';

void main() {
  runApp(pertama());
}

// void main() {
// runApp(MaterialApp(
// onGenerateRoute: RouteGenerator.generateRoute,
// ));
// }

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


