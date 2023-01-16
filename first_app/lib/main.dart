// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:html';
// import 'dart:js';

// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: SafeArea (
      child: Center(
      child : Container(
        child: Image.asset("images/image1.jpg"),
        width: 400,
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), 
          border: Border.all(
                    color: Colors.blue,
                    width: 5,
        ),
      ),
    
    ),
    
  )))));

  //Material App // Android
  // Cupurtino   // IOS
}


// Images types:
// assets image
//file images
//network images