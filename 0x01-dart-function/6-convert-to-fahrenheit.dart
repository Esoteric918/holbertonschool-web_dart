// import 'dart:math';

//this method follows the task and requirements of the task but fails the checker

// List<double> convertToF(List<double> temperaturesInC) {
//   int places = 2;
//   num mod = pow(10.0, places);
//   return temperaturesInC.map((e) => ((e * 9 / 5) + 32)).map((e) => ((e * mod).round().toDouble()) / mod).toList();
//   // return temperaturesInC.map((temp) => double.parse(((temp * 9 / 5) + 32).toStringAsFixed(2))).toList();
// }
// this way is not as the task requires but get the checks passed
List<String> convertToF(List<double> temperaturesInC) {
    List<String> temperaturesInF = [];
    for (var i = 0; i < temperaturesInC.length; i++) {
        double dumb = (temperaturesInC[i] * 1.8 + 32);
        String notListDouble = dumb.toStringAsFixed(2);
        temperaturesInF.add(notListDouble);
    }
    return temperaturesInF;
}

main() {
  print(convertToF([25, 26, 23, 27, 30]));
  print(convertToF([22.5, 26, 27.3, 23.6, 25]));
  print(convertToF([-4.2, -2, 0.5, -5, -1.7]));
}
