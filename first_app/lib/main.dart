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
              child: Container(
                  // color: Colors.yellowAccent,
                  // width: 150,
                  child: ListView(

                      children: [
                        GestureDetector(
          onTap: onTapContainer,
          child: Container(
            height: 30,
            color: Colors.blue,
            child: Center(
                child: Text(
              "Hello",
              textAlign: TextAlign.center,
            )),
          ),
        )
                      ],
                      
                      
                      
                      
                      
                      ))))));

  //Material App // Android
  // Cupurtino   // IOS
}

List<Widget> getMyWidgets() {
  List<Color> myContainerColors = [
    Colors.amber,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.purple,
    Colors.indigo,
    Colors.teal,
    Colors.yellow
  ];

  List<Widget> myResult = [];

  for (var i = 0; i < myContainerColors.length; i++) {
    myResult.add(Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        width: 100,
        height: 100,
        color: myContainerColors[i],
        child: Center(child: Text("${i + 1}")),
      ),
    ]));
  }
  return myResult;
}

// Images types:
// assets image
//file images
//network images
// data images
