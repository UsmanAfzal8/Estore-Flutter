import 'package:flutter/material.dart';

import 'Pages/Login.dart';
import 'Pages/registerpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estore',
      debugShowCheckedModeBanner: false,
      initialRoute: '/loginpage',
      routes: {
        '/loginpage': (context) => LoginPage(),
        '/RegisterPage': (context) => RegisterPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
    );
  }
}
