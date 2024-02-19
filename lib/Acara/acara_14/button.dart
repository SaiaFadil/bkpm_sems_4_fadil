import 'package:flutter/material.dart';

class myButton extends StatefulWidget {
  const myButton({super.key});

  @override
  State<myButton> createState() => _myButtonState();
}

class _myButtonState extends State<myButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BUTTON'),
      ),
        body: Column(
      children: [
        ElevatedButton(
          style: ButtonStyle(),
          child: Text("Raised Button"),
          onPressed: () {},
        ),
        MaterialButton(
          color: Colors.lime,
          child: Text("Material Button"),
          onPressed: () {},
        ),
        TextButton(
          child: Text("FlatButton Button"),
          onPressed: () {},
        ),
      ],
    ));
  }
}
