import 'package:bkpm_fadil/Acara/beranda_tugas.dart';
import 'package:bkpm_fadil/CustomButton.dart';
import 'package:bkpm_fadil/CustomColors.dart';
import 'package:bkpm_fadil/CustomText.dart';
import 'package:flutter/material.dart';

class menu_profile extends StatefulWidget {
  const menu_profile({super.key});

  @override
  State<menu_profile> createState() => _menu_profileState();
}

class _menu_profileState extends State<menu_profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: CustomColors.secondary,
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: CustomButton.DefaultButton(CustomColors.threerty),
                onPressed: () {
                  Navigator.push(context, PageRouteBuilder(pageBuilder: ((context, animation, secondaryAnimation) => page_beranda()),transitionsBuilder: (context,animation,secondaryAnimation,child){
                    return FadeTransition(opacity: animation,child: child,);
                  }));
                },
                child: Text(
                  "KEMBALI KE MENU UTAMA",
                  style: CustomText.TextChewy(25, CustomColors.blackColor),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
