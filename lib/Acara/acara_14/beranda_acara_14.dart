import 'package:bkpm_fadil/Acara/acara_14/button.dart';
import 'package:bkpm_fadil/Acara/acara_14/container.dart';
import 'package:bkpm_fadil/Acara/acara_14/icon.dart';
import 'package:bkpm_fadil/Acara/acara_14/scafold.dart';
import 'package:bkpm_fadil/Acara/acara_14/text.dart';
import 'package:bkpm_fadil/Acara/acara_14/textfield.dart';
import 'package:bkpm_fadil/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:bkpm_fadil/CustomColors.dart';
import 'package:bkpm_fadil/CustomText.dart';

class page_beranda_acara_14 extends StatefulWidget {
  const page_beranda_acara_14({super.key});

  @override
  State<page_beranda_acara_14> createState() => _page_beranda_acara_14State();
}

class _page_beranda_acara_14State extends State<page_beranda_acara_14> {
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
                            "ACARA 14",
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
                                  "Scaffold",
                                  style: CustomText.TextArvoBold(
                                      22, CustomColors.blackColor),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation,
                                                secondaryAnimation) =>
                                            MyScaffold(),
                                        transitionsBuilder: (context, animation,
                                            secondaryAnimation, child) {
                                          return FadeTransition(
                                              opacity: animation, child: child);
                                        },
                                      ));
                                },
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: CustomButton.DefaultButton(
                                    CustomColors.threerty),
                                child: Text(
                                  "Text",
                                  style: CustomText.TextArvoBold(
                                      22, CustomColors.blackColor),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation,
                                                secondaryAnimation) =>
                                            myText(),
                                        transitionsBuilder: (context, animation,
                                            secondaryAnimation, child) {
                                          return FadeTransition(
                                              opacity: animation, child: child);
                                        },
                                      ));
                                },
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: CustomButton.DefaultButton(
                                    CustomColors.threerty),
                                child: Text(
                                  "Icon",
                                  style: CustomText.TextArvoBold(
                                      22, CustomColors.blackColor),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation,
                                                secondaryAnimation) =>
                                            myIcon(),
                                        transitionsBuilder: (context, animation,
                                            secondaryAnimation, child) {
                                          return FadeTransition(
                                              opacity: animation, child: child);
                                        },
                                      ));
                                },
                              ),
                            )),
                          
                        Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: CustomButton.DefaultButton(
                                    CustomColors.threerty),
                                child: Text(
                                  "Container",
                                  style: CustomText.TextArvoBold(
                                      22, CustomColors.blackColor),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation,
                                                secondaryAnimation) =>
                                            myContainer(),
                                        transitionsBuilder: (context, animation,
                                            secondaryAnimation, child) {
                                          return FadeTransition(
                                              opacity: animation, child: child);
                                        },
                                      ));
                                },
                              ),
                            )),
                          
                        Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: CustomButton.DefaultButton(
                                    CustomColors.threerty),
                                child: Text(
                                  "Button",
                                  style: CustomText.TextArvoBold(
                                      22, CustomColors.blackColor),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation,
                                                secondaryAnimation) =>
                                            myButton(),
                                        transitionsBuilder: (context, animation,
                                            secondaryAnimation, child) {
                                          return FadeTransition(
                                              opacity: animation, child: child);
                                        },
                                      ));
                                },
                              ),
                            )),
                          
                        Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: CustomButton.DefaultButton(
                                    CustomColors.threerty),
                                child: Text(
                                  "Text Field",
                                  style: CustomText.TextArvoBold(
                                      22, CustomColors.blackColor),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (context, animation,
                                                secondaryAnimation) =>
                                            myTextfield(),
                                        transitionsBuilder: (context, animation,
                                            secondaryAnimation, child) {
                                          return FadeTransition(
                                              opacity: animation, child: child);
                                        },
                                      ));
                                },
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: CustomButton.DefaultButton(
                                    CustomColors.redColor),
                                child: Text(
                                  "KELUAR",
                                  style: CustomText.TextArvoBold(
                                      22, CustomColors.blackColor),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
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
