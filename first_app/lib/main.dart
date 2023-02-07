// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Score Board',
      home: ScoreBoard(),
    );
  }
}

class ScoreBoard extends StatefulWidget {
  @override
  _ScoreBoardState createState() => _ScoreBoardState();
}

class _ScoreBoardState extends State<ScoreBoard> {
  int eng = 3;
  int fra = 1;
  // List<Goal> engGoals = [];
  // List<Goal> fraGoals = [];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(child: Text('Score Board')),
      ),
      body: SafeArea(
        child: Column(
          
          children: [

            Container(
              padding: EdgeInsets.all(10),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'ENG',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                    child: Text(
                  '$eng : $fra',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.red,
                    // fontWeight: FontWeight.bold,
                  ),
                )),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Text(
                    'FRA',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                
              ],
                      ),
            ),
            Container(
              width: double.infinity,
              height: 2,
              color: Colors.grey[300],
              margin: EdgeInsets.symmetric(
                horizontal: 
                MediaQuery.of(context).size.width * 0.1
                ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.grey,
              margin: EdgeInsets.symmetric(
                horizontal: 
                MediaQuery.of(context).size.width * 0.1
                ),
            )
          ]
        ),
      ),
    );
  }
}
