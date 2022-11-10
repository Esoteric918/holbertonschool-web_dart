int add(a, b) {
  return a + b;
}

int sub(a, b) {
  return a - b;
}
// str => String : Contain the output With new line between Add and Sub
// Return str
String showFunc(int a, int b) {
  String str = "Add: ${add(a, b)}\nSub: ${sub(a, b)}";
  return str;
}


void main(List<String> args) {
  var a = int.parse(args[0]);
  var b = int.parse(args[1]);
  print(showFunc(a, b));
}
