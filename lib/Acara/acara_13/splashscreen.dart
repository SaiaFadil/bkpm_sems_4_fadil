import 'package:bkpm_fadil/Acara/acara_13/page_login.dart';
import 'package:bkpm_fadil/CustomColors.dart';
import 'package:bkpm_fadil/CustomText.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 400), () { 
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => page_login(),
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          transitionDuration: Duration(milliseconds: 500),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.secondary,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Container(
              //     margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              //     child: Image.asset(
              //       "assets/images/LogoSplashScreen.png",
              //       alignment: Alignment.center,
              //       width: double.infinity,
              //     )),
              Text(
                "BatiCraft",
                style: CustomText.TextArvoBold(30, CustomColors.blackColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
