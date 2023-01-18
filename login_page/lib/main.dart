// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text("Login with mobile"),
              TextField(
                decoration: InputDecoration(
                  hintText: "9876543210"
                  
                ),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
