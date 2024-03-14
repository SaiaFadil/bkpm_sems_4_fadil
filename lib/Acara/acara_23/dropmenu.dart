import 'dart:ffi';

import 'package:bkpm_fadil/CustomColors.dart';
import 'package:flutter/material.dart';

class layout_acara_22 extends StatefulWidget {
  layout_acara_22({super.key});

  @override
  State<layout_acara_22> createState() => _layout_acara_22State();
}

class _layout_acara_22State extends State<layout_acara_22> {
  final List<String> gambar = [
    "8ball.gif",
    "ball.gif",
    "catur.gif",
    "dadu.gif",
    "robot.gif",
    "rubik.gif",
  ];

  static const Map<String, Color> colors = {
    '8 Ball': Color.fromARGB(255, 26, 73, 88),
    'ball': Color.fromARGB(255, 26, 73, 88),
    'catur': Color.fromARGB(255, 26, 73, 88),
    'dadu': Color.fromARGB(255, 26, 73, 88),
    'robot': Color.fromARGB(255, 26, 73, 88),
    'rubik': Color.fromARGB(255, 26, 73, 88),
  };
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
              CustomColors.whiteColor,
              CustomColors.primary,
              CustomColors.threerty
            ])),
        child: PageView.builder(
          controller: PageController(viewportFraction: 0.8),
          itemCount: gambar.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 50.0),
              child: Material(
                elevation: 8.0,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Hero(
                        tag: gambar[index],
                        child: Material(
                          child: InkWell(
                            child: Flexible(
                              flex: 1,
                              child: Container(
                                color: colors.values.elementAt(index),
                                child: Image.asset(
                                  "assets/images/${gambar[index]}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        HalamanDua(
                                          gambar: gambar[index],
                                          colors:
                                              colors.values.elementAt(index),
                                        ))),
                          ),
                        ))
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class HalamanDua extends StatefulWidget {
  HalamanDua({required this.gambar,required this.colors});
  final String gambar;
  final Color colors;

  @override
  State<HalamanDua> createState() => _HalamanDuaState();
}

class _HalamanDuaState extends State<HalamanDua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BT21"),
        backgroundColor: CustomColors.primary,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: RadialGradient(center: Alignment.center, colors: [
              CustomColors.primary,
              CustomColors.threerty,
              CustomColors.secondary
            ])),
          ),
          Center(
            child: Hero(
              tag: widget.gambar,
              child: ClipOval(
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Material(
                    child: InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Flexible(
                        flex: 1,
                        child: Container(
                          color: widget.colors,
                          child: Image.asset(
                            "assets/images/${widget.gambar}",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
