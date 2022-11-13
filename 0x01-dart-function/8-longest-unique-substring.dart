String longestUniqueSubstring(String s) {
  var longest = '';
  var current = '';
  for (var i = 0; i < s.length; i++) {
    var c = s[i];
    if (current.compareTo(c) < 0) {
      current += c;
    } else {
      if (current.length > longest.length) {
        longest = current;
      }
      current = c;
    }
  }
  if (current.length > longest.length) {
    longest = current;
  }
  return longest;
}

main() {
  print(longestUniqueSubstring("abcacbd"));
  print(longestUniqueSubstring("aaaaaaaa"));
  print(longestUniqueSubstring("abcde"));
  print(longestUniqueSubstring('banBan'));
}
