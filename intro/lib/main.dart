import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Scaffold(
          backgroundColor: Colors.grey,
          body: Column(
            children: [
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/dodge.jpg'),
              ),
              Text(
                "Swastik Juneja",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60.0,
                    fontFamily: 'Pacifico',
                    letterSpacing: 0),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontFamily: 'Pacifico',
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    "9876543210",
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontFamily: "arial",
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    "swastikjuneja2012@gmail.com",
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Monotype corsiva',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
