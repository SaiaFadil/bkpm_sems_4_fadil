import 'package:bkpm_fadil/CustomColors.dart';
import 'package:bkpm_fadil/CustomText.dart';
import 'package:flutter/material.dart';

class menu_home extends StatefulWidget {
  const menu_home({super.key});

  @override
  State<menu_home> createState() => _menu_homeState();
}

class _menu_homeState extends State<menu_home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: CustomColors.secondary,
        body: SafeArea(
            child: Center(
          child: Text(
            "INI MENU HOME",
            style: CustomText.TextChewyBold(40, CustomColors.blackColor),
          ),
        )),
      ),
    );
  }
}
