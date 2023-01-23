// assignment
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
      alignment: Alignment.center,
      width: 500,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Container(
            height: 250,
            width: 200,
            //alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(right: 20, left: 5),
            padding: EdgeInsets.only(left: 50, top: 40),
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Sarita', style: TextStyle(fontSize: 30, color: Colors.white),),
                SizedBox(height: 10),
                Text('Blood', style: TextStyle(fontSize: 30, color: Colors.white),),
                SizedBox(height: 10),
                Text('Bank', style: TextStyle(fontSize: 30, color: Colors.white),),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(6),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Container(
                    width: 2,
                    height: 2,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(children: [
              Text("Blood Group", style: TextStyle(color: Colors.red, fontSize: 16),),
              SizedBox(height: 10),
              Text('B +ve', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              SizedBox(height: 50),
              Text('Add Units', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
              SizedBox(height: 10),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(10),
                ),
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  if(myNumber>0)
                  Container(
                    
                    
                    child: 
                    ElevatedButton(
                    onPressed: OnPressedMinus,
                    child: Text("-"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black45))),
                  ),
                  Text("$myNumber", style: TextStyle(fontSize: 30)),

                  if(myNumber<10)
                  Container(
                    
                    
                    child: 
                   
                ElevatedButton(
                    onPressed: OnPressedPlus,
                    child: Text("+"),

                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black45)))
                      
                    ),
                    
                    
                ],),
              )
            ],)
          )
          
        ]
       
      ), 




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

