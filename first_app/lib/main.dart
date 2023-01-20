// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:html';
// import 'dart:js';

// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

List<Color> myContainerColors = [
  Color.fromARGB(255, 197, 160, 48),
  Colors.black,
  Colors.blue,
  Colors.green,
  Colors.pink
];
int myNumber = 0;

void main() {
  runApp(MaterialApp(
      home: Scaffold(body: SafeArea(child: MyCounterStatefulWidget()))));

  //Material App // Android
  // Cupurtino   // IOS
}

class MyCounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text("Number"),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(myNumber.toString()),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: OnPressedMinus,
                    child: Text("-"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black45))),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: OnPressedPlus,
                    child: Text("+"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black45)))
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class MyCounterStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCounterWidgetState();
  }
}

class MyCounterWidgetState extends State<MyCounterStatefulWidget> {
  int myNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: EdgeInsets.all(20),
        child: Text("Number"),
      ),
      Padding(
        padding: EdgeInsets.all(20),
        child: Text(myNumber.toString()),
      ),
      Padding(
        padding: EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: OnPressedMinus,
                child: Text("-"),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.black45))),
            SizedBox(
              height: 10,
              width: 10,
            ),
            ElevatedButton(
                onPressed: OnPressedPlus,
                child: Text("+"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black45)))
          ],
        ),
      )
    ]);
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

void OnPressedMinus() {
  myNumber = myNumber - 1;
  print("pressed - sign : " + myNumber.toString());
}

void OnPressedPlus() {
  myNumber = myNumber + 1;
  print("pressed + sign : " + myNumber.toString());
}
