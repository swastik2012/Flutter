void main(List<String> args) {
  // Map -> key and value pair

  // Map<String, String> myStringMap = {"1": "Shreyash", "2": "Hari", "3": "Ravi"};

  // myStringMap.forEach((key, value) => print(value));

  // print(myStringMap["1"]);

  Student keerthi = Student(name: "shreyash", age: 30);
  // keerthi.name = "Keerthi";
  // keerthi.age = 22;
  // print(keerthi.age);

  Student saksham = Student.withoutAge("Saksham");

  // print(saksham.age);
}

class Student {
  String? _name;
  int? _age;
  static String? collegeName;

  Student({required String name, required int age}) {
    _name = name;
    _age = age;
  }

  Student.withoutAge(String name) {
    _name = name;
  }

  void setName(String name) {
    _name = name;
  }

  void setAge(int age) {
    _age = age;
  }

  void Study() {
    print("I studied !!!");
  }

  void getName() {
    print(_name);
  }

  void getAge() {
    print(_age);
  }
}
