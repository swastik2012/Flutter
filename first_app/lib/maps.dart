void main(List<String> args) {
  // Map -> key and value pair

  // Map<String, String> myStringMap = {"1": "Shreyash", "2": "Hari", "3": "Ravi"};

  // myStringMap.forEach((key, value) => print(value));

  // print(myStringMap["1"]);

  Student keerthi = Student();
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

  void Study() {
    print("I studied !!!");
  }

  void getName() {
    return _name;
  }
}
