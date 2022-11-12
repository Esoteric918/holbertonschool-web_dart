String longestUniqueSubstring(String s) {
  var longest = '';
  var current = '';
// use the compareTo() method to compare the characters
  for (var i = 0; i < s.length; i++) {
    if (current.compareTo(s[i]) < 0) {
      current += s[i];
    } else {
      if (current.length > longest.length) {
        longest = current;
      }
      current = s[i];
    }
  }
  return longest.length > current.length ? longest : current;
}

main() {
  print(longestUniqueSubstring("abcacbd"));
  print(longestUniqueSubstring("aaaaaaaa"));
  print(longestUniqueSubstring("abcde"));
}
