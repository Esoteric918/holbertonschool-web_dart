import '9-palindrome.dart';

String longestPalindrome(String s) {
  if (s.length == 2) {
    return 'none';
  }
  String longest = '';
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j < s.length; j++) {
      String sub = s.substring(i, j + 1);
      if (isPalindrome(sub) && sub.length > longest.length) {
        longest = sub;
      }
    }
  }
  return longest == '' ? 'none' : longest;
}

main() {
  print(longestPalindrome("abcde"));
  print(longestPalindrome("azeghjhg"));
  print(longestPalindrome("aaabvf"));
}
