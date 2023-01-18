// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:html';
// import 'dart:js';

// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

List<Color> myContainerColors = [
  Colors.amber,
  Colors.black,
  Colors.blue,
  Colors.green,
  Colors.pink
];
void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: Container(
    color: Colors.yellowAccent,
    width: 100,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ...getMyWidgets()!,
        SizedBox(
          height: 20,
        ),
        Container(
          height: 20,
          color: Colors.black,
        )
      ],
    ),
  )))));

  //Material App // Android
  // Cupurtino   // IOS
}

List<Widget>? getMyWidgets() {
  
    List<Color> myContainerColors = [
      Colors.amber,
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.purple
    ];

    List<Widget> myResult = [];

    for (var i = 0; i < myContainerColors.length; i++) {
      myResult.add(Container(
        width: 40,
        height: 40,
        color: myContainerColors[i],
        child: Center(child: Text("${i + 1}")),
      ));
    }
    return myResult;
  
}

// Images types:
// assets image
//file images
//network images
// data images
