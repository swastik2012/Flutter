void main() async {
  List<String?> result =
      await Future.wait([firstasync(), secondasync(), thirdasync()]);

  result.forEach((element) => print(element));

  print("done");
}

Future<String?> firstasync() async {
  await Future.delayed(const Duration(seconds: 2));
  return "first";
}

Future<String?> secondasync() async {
  await Future.delayed(const Duration(seconds: 2));
  return "Second";
}

Future<String?> thirdasync() async {
  await Future.delayed(const Duration(seconds: 2));

  return "Third";
}
