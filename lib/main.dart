import 'package:bkpm_fadil/CustomColors.dart';
import 'package:bkpm_fadil/CustomText.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Utama());
}

class Utama extends StatefulWidget {
  @override
  State<Utama> createState() => _UtamaState();
}

class _UtamaState extends State<Utama> {
  double height = 0;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Stack(
          children: [
            Container(
              color: CustomColors.primary,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: height * .06,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Acara 4",
                          style: CustomText.TextArvoBold(
                              25, CustomColors.whiteColor),
                        )),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
