import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  int _teamAScore = 0;
  int _teamBScore = 0;

  void _incrementTeamAScore() {
    setState(() {
      _teamAScore++;
    });
  }

  void _incrementTeamBScore() {
    setState(() {
      _teamBScore++;
    });
  }

  void _decrementTeamAScore() {
    setState(() {
      _teamAScore--;
    });
  }

  void _decrementTeamBScore() {
    setState(() {
      _teamBScore--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Score Board'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('ENG', style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),),
              Text('$_teamAScore'),
              Column(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: _incrementTeamAScore,
                  ),
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: _decrementTeamAScore,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('FRA', style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),),
              Text('$_teamBScore'),
              Column(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: _incrementTeamBScore,
                  ),
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: _decrementTeamBScore,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
