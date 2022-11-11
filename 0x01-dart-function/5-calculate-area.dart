double calculateArea(double height, double base) {
  // the return shoud be rounded to two decimal places
  return double.parse((.5 * height * base).toStringAsFixed(2));
}


main() {
  print(calculateArea(20,7));
  print(calculateArea(10,7));
  print(calculateArea(8.5,3.7));
}
