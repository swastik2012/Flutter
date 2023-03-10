import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/":(context) => Screen1(),
      "/screen2" :(context) => Screen2(),
      "/screen3":(context) => Screen3() 
    },
  ));
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
            onTap: (() =>{
              print("On Screen 1"),
              Navigator.pushNamed(context, "/screen2")
            } ),
            child: Container(
              child: Text("Screen 1")),
          ),
        ]
        ),
        )
        ));
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
            onTap: (() =>{
              print("On Screen 2"),
              Navigator.pushNamed(context, "/screen3")
            } ),
            child: Container(
              child: Text("Screen 2")),
          ),
        ]
        ),
        )
        ));
  }
}


class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
            onTap: (() =>{
              print("On Screen 3"),
              Navigator.pushNamed(context, "/")
            } ),
            child: Container(
              child: Text("Screen 3")),
          ),
        ]
        ),
        )
        ));
  }
}
