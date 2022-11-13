// bool isPalindrome(String s) {
//   if (s.length == 2) {
//     return false;
//   }
//   var i = 0;
//   var j = s.length - 1;
//   while (i < j) {
      // compare characters of the string
//     if (s[i] != s[j]) {
//       return false;
//     }
//     i++;
//     j--;
//   }
//   return true;
// }

bool isPalindrome(String s) {
  if (s.length == 2) {
    return false;
  }
  String? reversed = s.split('').reversed.join();
  //compare the reversed string with the original string
  if (s == reversed) {
    return true;
  }
  return false;
}

main() {
  print(isPalindrome("aa"));
  print(isPalindrome("abcba"));
  print(isPalindrome("abcde"));
}
