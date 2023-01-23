import 'package:flutter/material.dart';

void main() {
  runApp(HashtagApp());
}

class HashtagApp extends StatefulWidget {
  @override
  _HashtagAppState createState() => _HashtagAppState();
}

class _HashtagAppState extends State<HashtagApp> {
  List<String> myTags = [];
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            TextField(
              controller: controller,
              onChanged: (updatedText) {
                myTags = getMyTags(updatedText);
                setState(() {});
              },
            ),
            SizedBox(
              height: 20,
              width: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [...getMyContainers()],
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> getMyContainers() {
    List<Widget> myCons = [];

    return myTags
        .map((e) => Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              color: Colors.yellow,
              child: Text(e),
            ))
        .toList();
  }

  List<String> getMyTags(String text) {
    List<String> myTags = [];
    // my name is #shreyash is my trainer
    for (var i = 0; i < text.length; i++) {
      // if (i > text.length - 1) break;
      
      if (text[i] == '#') {
        String newEntry = '';
        while (text[i] != ' ' && text[i] != '.' && i != text.length - 1) {
          if (text[i] == "#") {
          i++;
          continue;
        }
          newEntry = newEntry + text[i];
          i++;
        }
        myTags.add(newEntry);
      }
    }
    return myTags;
  }
}
