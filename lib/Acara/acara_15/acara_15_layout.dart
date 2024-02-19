import 'package:bkpm_fadil/Acara/acara_15/telegram.dart';
import 'package:flutter/material.dart';

class acara_15_layout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Telegram(),
    );
  }
}