import 'package:flutter/material.dart';

class myIcon extends StatefulWidget {
  const myIcon({super.key});

  @override
  State<myIcon> createState() => _myIconState();
}

class _myIconState extends State<myIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ICON'),
      ),
        body: Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[Icon(Icons.access_alarm), Text('Alarm')],
          ),
          Column(
            children: <Widget>[Icon(Icons.phone), Text('Phone')],
          ),
          Column(
            children: <Widget>[Icon(Icons.book), Text('Book')],
          ),
        ],
      ),
    ));
  }
}
