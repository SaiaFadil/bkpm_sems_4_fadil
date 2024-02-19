import 'package:flutter/material.dart';

class myTextfield extends StatefulWidget {
  const myTextfield({super.key});

  @override
  State<myTextfield> createState() => _myTextfieldState();
}

class _myTextfieldState extends State<myTextfield> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('TEXT FIELD'),
      ),
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(hintText: "Username"),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(hintText: "Password"),
            ),
            ElevatedButton(
              child: Text("Login"),
              onPressed: () {},
            )
          ],
        ),
      ),
    ));
  }
}
