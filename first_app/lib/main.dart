// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:html';
// import 'dart:js';

// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: Center(
    child: Container(
      // child: Image.asset("images/image1.jpg"),
      width: 200,
      height: 200,
      child: Center(
        child: Text(
          "COFFEE",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, 
              fontSize: 40),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Color.fromARGB(255, 66, 245, 185),
          width: 15,
        ),
        image: DecorationImage(image: AssetImage("images/image1.jpg")),
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
// data images
