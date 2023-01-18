// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

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
                // color: Colors.black,
                child: Stack(
                  alignment: AlignmentDirectional.topStart,
                  fit: StackFit.loose,
                  children: [...getMyWidgets()],
                ),
                )))));

  //Material App // Android
  // Cupurtino   // IOS
}

List<Widget> getMyWidgets() {
  
    List<Color> myContainerColors = [
      Colors.amber,
      Colors.black
    ];

    List<Widget> myResult = [];

    for (var i = 0; i < myContainerColors.length; i++) {
      myResult.add(Container(
        child: Positioned(
          width: (i==1)?10:100,
          height: (i==1)?10:100,
          child: Container(
          width: 100 / (i+1),
          height: 100 / (i+1),
          color: myContainerColors[i],
          child: Center(child: Icon(Icons.alarm_on, size: 30,)),
          ),
        )));
    }
    return myResult;
  
}

// Images types:
// assets image
//file images
//network images
// data images
