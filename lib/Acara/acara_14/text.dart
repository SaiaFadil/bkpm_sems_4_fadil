import 'package:flutter/material.dart';

class myText extends StatefulWidget {
  const myText({super.key});

  @override
  State<myText> createState() => _myTextState();
}

class _myTextState extends State<myText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        title: Text('TEXT'),
      ),
            body: Text(
      'Ini Text',
      style: TextStyle(
          color: Colors.blue,
          backgroundColor: Colors.pink,
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold),
    ));
  }
}
