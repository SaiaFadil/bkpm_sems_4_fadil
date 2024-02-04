import 'package:bkpm_fadil/CustomColors.dart';
import 'package:bkpm_fadil/CustomText.dart';
import 'package:flutter/material.dart';

class menu_shop extends StatefulWidget {
  const menu_shop({super.key});

  @override
  State<menu_shop> createState() => _menu_shopState();
}

class _menu_shopState extends State<menu_shop> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(
        child: Text("SHOP",style: CustomText.TextChewyBold(40, CustomColors.blackColor,)),
      ),),
    );
  }
}