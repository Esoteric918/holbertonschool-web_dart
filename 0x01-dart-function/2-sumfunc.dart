int add(a, b) {
  return a + b;
}

int sub(a, b) {
  return a - b;
}
String showFunc(int a, int b) {
  String str = "Add ${a} + ${b} = ${add(a, b)}\nSub ${a} + ${b} = ${sub(a, b)}";
  return str;
}
