// The output of the program should be:

//     3 times the value of str
//     followed by the 9 first characters of str
//     followed by a new line

// You are not allowed to use any loops or conditional statement
// Your program should be maximum 5 lines long


void main() {
  String str = "Holberton School";
  print(str * 3 + str.substring(0, 9) + "\n");
}


// void main() {
//   String str = "Holberton School";
// }
