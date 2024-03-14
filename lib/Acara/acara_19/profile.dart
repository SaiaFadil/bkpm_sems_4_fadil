import 'package:bkpm_fadil/CustomColors.dart';
import 'package:bkpm_fadil/CustomText.dart';
import 'package:flutter/material.dart';

class Profile  extends StatelessWidget {
  const Profile ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "Profile ",
        style: CustomText.TextArvo(30, CustomColors.blackColor),
      )),
    );
  }
}
