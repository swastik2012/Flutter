// assignment
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: MyCounterWidget(),
      ),
    ),
  ));
}

class MyCounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCounterWidgetState();    
  }
}


class MyCounterWidgetState extends State<MyCounterWidget> {
  int myNumber=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 100,
      width: 100,
      color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              TextField(
                decoration: InputDecoration(focusColor: Colors.lightBlueAccent,
                
                ),
              )
          ],
        )
      
      );
  }

   void OnPressedMinus() {
    setState(() {
      myNumber = myNumber - 1;
    });

    print("pressed - sign : " + myNumber.toString());
  }

  void OnPressedPlus() {
    setState(() {
      myNumber = myNumber + 1;
    });
    print("pressed + sign : " + myNumber.toString());
  }
}

