// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';
import 'dart:js';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: Center(
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              colors: [Colors.red, Colors.orange, Colors.yellow],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
              boxShadow: [
                BoxShadow(
                  color: Colors.yellowAccent.shade100, 
                  blurRadius: 20, 
                  spreadRadius: 10
                )
              ]
        ),
      ),
    ),
  )));

  //Material App // Android
  // Cupurtino   // IOS
}
