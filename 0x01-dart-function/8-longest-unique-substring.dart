String longestUniqueSubstring(String str) {
  String longest = '';
  for (int i = 0; i < str.length; i++) {
    String current = '';
    for (int j = i; j < str.length; j++) {
      if (current.contains(str[j])) break;
      current += str[j];
    }
    if (current.length > longest.length) {
      longest = current;
    }
  }
  return longest;
}

void main() {
  print(longestUniqueSubstring("abcacbd"));
  print(longestUniqueSubstring("aaaaaaaa"));
  print(longestUniqueSubstring("abcde"));
}
