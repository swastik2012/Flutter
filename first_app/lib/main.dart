import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: Center(
        child: ElevatedButton(
      style:
          ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) {
        return Colors.black;
      })),
      onPressed: () => {print("I am pressed")},
      child: Text(
        "Press Me",
        selectionColor: Colors.red,
      ),
    )),
    appBar: AppBar(
      title: Center(
        child: Text("My App Bar"),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () => {print("I pressed my floating button")},
      child: Text("+"),
    ),
  )));

  //Material App // Android
  // Cupurtino   // IOS
}
