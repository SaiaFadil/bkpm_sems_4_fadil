import 'package:bkpm_fadil/CustomColors.dart';
import 'package:flutter/material.dart';

class layout_acara_21 extends StatefulWidget {
  const layout_acara_21({super.key});

  @override
  State<layout_acara_21> createState() => _layout_acara_21State();
}

class _layout_acara_21State extends State<layout_acara_21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: BoxDecoration(
        gradient: LinearGradient(begin: FractionalOffset.topCenter,
        end: FractionalOffset.bottomCenter,colors: [CustomColors.whiteColor,CustomColors.primary,CustomColors.threerty])
      )),
    );
  }
}