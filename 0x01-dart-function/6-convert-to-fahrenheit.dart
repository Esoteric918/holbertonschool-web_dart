// Create a function convertToF() that accepts a list of doubles representing a list of temperatures in celsius, converts them to fahrenheit and returns them in a list.

// Function prototype : List<double> convertToF(List<double> temperaturesInC);

// To convert temperature from celsius to fahrenheit you need to multiply it by 9, followed by a division by 5 and finally add 32.

// Let’s for example convert 25 degrees celsius : (25°C × 9/5) + 32 = 77°F You have to use the map method. All the results should be rounded to two decimal points.

// Example: convertToF([25, 30, 35, 40, 45]) should return [77.00, 86.00, 95.00, 104.00, 113.00]
import 'dart:math';

List<double> convertToF(List<double> temperaturesInC) {
  int places = 2;
  num mod = pow(10.0, places);
  return temperaturesInC.map((e) => ((e * 9 / 5) + 32)).map((e) => ((e * mod).round().toDouble()) / mod).toList();
  // return temperaturesInC.map((temp) => double.parse(((temp * 9 / 5) + 32).toStringAsFixed(2))).toList();
}

main() {
  print(convertToF([25, 26, 23, 27, 30]));
  print(convertToF([22.5, 26, 27.3, 23.6, 25]));
  print(convertToF([-4.2, -2, 0.5, -5, -1.7]));
}
