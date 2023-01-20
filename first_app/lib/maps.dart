void main() {
 

  Student.collegeName = "LPU";
 
  ITGuy rahul = ITGuy(myName : "Rahul", myAge : 21);
  rahul.setItName("RaGa");
 

  print(rahul.getName());
 
}

class Student {
  String? _name;
  int? _age;
  static String? collegeName;
 
  Student({required String name,required int age}) {
   
    _name = name;
    _age = age;
   
    print ("Called Student Constructor");
  }
 
  Student.withoutAge(String name){
    _name = name;
  }
 
  static String? getCollegeName() {
    return collegeName;
  }
 
  //getters
  String? getName() {
    return _name;
  }
 
  //setters
  void setName(String name) {
    _name = name;
  }
 
 
  void study() {
    print("I studied !!!");
  }
}

class ITGuy extends Student implements
  WriteCode, TestCode, GiveInterview {
  String? itName;
 
  ITGuy({required String myName,required int myAge}) : super(name : myName, age : myAge) {
    print("called ITGuy constructor");
  }
 
  @override
  writeCode() {
    return "it code";
  }

  @override
  giveInterview() {
    return true;
  }
 
  @override
  testCode() {
    return true;
  }
 
  void setItName(String name){
    itName = name;
  }
 
  @override
  String? getName(){
    print(super.getName());
    return itName;
  }
 
 
}


abstract class WriteCode {
  String writeCode() {
    return "Code";
  }
}

abstract class GiveInterview {
  bool giveInterview() {
    return true;
  }
}

abstract class TestCode {
  bool testCode() {
    return true;
  }
}


// Whatsapp implements sendMessage

// SMS implements sendMessage

// Email implements sendMessage