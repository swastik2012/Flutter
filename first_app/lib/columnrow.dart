// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:html';
// import 'dart:js';

// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: Container(
                color: Colors.yellowAccent,
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //child 1
                    Container(
                      width: 40,
                      height: 40,
                      color: Colors.blue,
                      child: Center(child: Text("1")),
                    ),
                    //child 2
                    Container(
                      width: 40,
                      height: 40,
                      color: Colors.redAccent,
                      child: Center(child: Text("2")),
                    ),
                    //child 3
                    Container(
                      width: 40,
                      height: 40,
                      color: Colors.greenAccent,
                      child: Center(child: Text("3")),
                    ), 
                    Container(
                      width: 40,
                      height: 40,
                      color: Colors.greenAccent,
                      child: Center(child: Text("4")),
                    ), 
                    Container(
                      width: 40,
                      height: 40,
                      color: Colors.greenAccent,
                      child: Center(child: Text("5")),
                    ),      
                  ]
                  ,),
              )
               ))));

  //Material App // Android
  // Cupurtino   // IOS
}


// Images types:
// assets image
//file images
//network images
// data images
