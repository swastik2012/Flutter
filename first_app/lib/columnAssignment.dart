// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:html';
// import 'dart:js';

// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
      home: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.teal.shade400,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  style: BorderStyle.solid,
                  width: 2,
                  color: Colors.yellow,
                ),
              ),
              height: 100,
              width: double.infinity,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(child: Text("25/08/2023")),
                        Container(child: Text("Monday")),
                      ],
                    ),
                    Container(
                      child: Text("Fetch Milk from the market"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.teal.shade400,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border.all(
                  style: BorderStyle.solid,
                  width: 2,
                  color: Colors.yellow,
                ),
              ),
              height: 100,
              width: double.infinity,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(child: Text("25/08/2023")),
                        Container(child: Text("Monday")),
                      ],
                    ),
                    Container(
                      child: Text("Fetch Milk from the market"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.teal,
              height: 100,
              width: double.infinity,
            ),
          ],
        ),
      ),
    )
  )
  );

  //Material App // Android
  // Cupurtino   // IOS
}

