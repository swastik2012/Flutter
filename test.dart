void main(){
  print(greeting(firstName: 'Rahul'));
}

String greeting({String? firstName}){
  return "Hello $firstName";
}