// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:html';
// import 'dart:js';

// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

List<Color> myContainerColors = [
  Color.fromARGB(255, 197, 160, 48),
  Colors.black,
  Colors.blue,
  Colors.green,
  Colors.pink
];
void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: Column(children: [
    MyCustomWidget(myColor: Colors.blue, myHeight: 100,),
    MyCustomWidget(myColor: Colors.red, myHeight: 100,),
  ])))));

  //Material App // Android
  // Cupurtino   // IOS
}

class MyCustomWidget extends StatelessWidget {
  final Color myColor;
  final double myHeight;

  const MyCustomWidget({required this.myColor, required this.myHeight});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      children: [
        Container(
          height: myHeight,
          color: myColor,
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
