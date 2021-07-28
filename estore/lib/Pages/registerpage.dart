import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Register Page "),
      ),
    );
  }
}
