import 'package:flutter/material.dart';

class myContainer extends StatefulWidget {
  const myContainer({super.key});

  @override
  State<myContainer> createState() => _myContainerState();
}

class _myContainerState extends State<myContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CONTAINER'),
      ),
        body: Container(
            padding: EdgeInsets.all(32.0),
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.purple),
// color: Colors.purple,
            child: Text(
              'Haiii',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )));
  }
}
