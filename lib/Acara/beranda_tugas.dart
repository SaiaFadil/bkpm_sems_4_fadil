import 'package:bkpm_fadil/Acara/acara_13/splashscreen.dart';
import 'package:bkpm_fadil/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:bkpm_fadil/CustomColors.dart';
import 'package:bkpm_fadil/CustomText.dart';

class page_beranda extends StatefulWidget {
  const page_beranda({super.key});

  @override
  State<page_beranda> createState() => _page_berandaState();
}

class _page_berandaState extends State<page_beranda> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: CustomColors.primary,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 40),
                          child: Text(
                            "BKPM FADIL",
                            style: CustomText.TextArvoBold(
                                35, CustomColors.blackColor),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: CustomButton.DefaultButton(
                                    CustomColors.threerty),
                                child: Text(
                                  "Acara 13",
                                  style: CustomText.TextArvoBold(
                                      22, CustomColors.blackColor),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation,
                                                secondaryAnimation) =>
                                            SplashScreen(),
                                        transitionsBuilder: (context, animation,
                                            secondaryAnimation, child) {
                                          return FadeTransition(
                                              opacity: animation, child: child);
                                        },
                                      ));
                                },
                              ),
                            ))
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
