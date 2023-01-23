import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: Screen1(
      color: Colors.blue,
    ),
  ));
}

class Screen1 extends StatefulWidget {
  final Color color;
  const Screen1({super.key, required this.color});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  Color? myColor;

  @override
  void initState() {
    myColor = widget.color;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: myColor,
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: (() => {
                                  print("On Screen 2"),
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Screen2(
                                                sourceButton: 1,
                                                myFun: changeBackground,
                                              ))))
                                }),
                            child: Container(child: Text("button 1")),
                          ),
                          InkWell(
                            onTap: (() => {
                                  print("On Screen 3"),
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Screen2(
                                                sourceButton: 2,
                                                myFun: changeBackground,
                                              ))))
                                }),
                            child: Container(child: Text("button 2")),
                          ),
                        ]),
                  ]),
            )));
  }

  void changeBackground(Color color) {
    myColor = color;
    setState(() {});
  }
}

class Screen2 extends StatelessWidget {
  final int sourceButton;
  final void Function(Color) myFun;
  const Screen2({super.key, required this.sourceButton, required this.myFun});
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.yellow,
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (() =>
                          {
                            myFun(Colors.red),
                          Navigator.pop(context)}),
                      child: Container(child: 
                      Text("At Screen 2 with the source button of screen 1 set to be: $sourceButton")
                      ),
                    ),
                  ]),
            )));
  }
}

// class Screen3 extends StatelessWidget {
//   const Screen3({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: Colors.red,
//             body: Center(
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     InkWell(
//                       onTap: (() => {
//                             print("On Screen 3"),
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: ((context) => Screen1())))
//                           }),
//                       child: Container(child: Text("Screen 3")),
//                     ),
//                   ]),
//             )));
//   }
// }
