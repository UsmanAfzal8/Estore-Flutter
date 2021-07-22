import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

const primarycolor = Color(0xFFFDFDFD);
const secondarycolor = Color(0xFF252525);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: secondarycolor,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: primarycolor,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(80))),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            child: Stack(
              children: [
                Container(
                  color: primarycolor,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: secondarycolor,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(80))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
