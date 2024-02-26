
import 'package:bkpm_fadil/Acara/acara_18/screen..dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return PageRouteBuilder(pageBuilder: (context,animation,secondaryAnimation)=>Acara_18_layout()) ;// Ubah Acara_18_layout menjadi Acara18Layout
      case '/about':
        return MaterialPageRoute(builder: (_) => AboutPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
