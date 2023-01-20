// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

int myNumber = 0;

void main() {
  runApp(MaterialApp(
      home: Scaffold(body: SafeArea(child: MyCounterStatefulWidget()))));

  //Material App // Android
  // Cupurtino   // IOS
}

class MyCounterStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCounterWidgetState();
  }
}

class MyCounterWidgetState extends State<MyCounterStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  height: 300,
                  // width: double.infinity,
                  width: 450,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300, 
                    borderRadius: BorderRadius.circular(20), 
                    boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 10, offset: Offset(2, 2))]
                  ),
                  child: 
                  Container(
                    
                    margin: EdgeInsets.fromLTRB(10, 10, 180, 10),
                    height: 100,
                    // width: double.infinity,
                    width: 100,
                    decoration: BoxDecoration(
                    color: Colors.grey, 
                    borderRadius: BorderRadius.circular(20), 
                    boxShadow: [BoxShadow(color: Colors.black45, blurRadius: 10, offset: Offset(2, 2))]),
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                      
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Text("Sarita", style: TextStyle(color: Colors.white, ),)
                      ],
                    ),
                    Row(
                      
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Text("Blood", style: TextStyle(color: Colors.white,),)
                      ],
                    ),
                    Row(
                      
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Text("Bank", style: TextStyle(color: Colors.white, ),)
                      ],
                    ),
                    ]),
                  ),
                ),

                

              ],
            )
          ],
      ),
    ));
  }

  
}

