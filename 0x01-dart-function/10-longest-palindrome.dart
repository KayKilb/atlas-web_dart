String longestPalindrome(String s) {
  if (s.length < 3) {
    return 'none';
  }
  String longest = 'none';
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) &&
          (longest == 'none' || substring.length > longest.length)) {
        longest = substring;
      }
    }
  }
  return longest;
}

bool isPalindrome(String s) {
  int left = 0;
  int right = s.length - 1;
  while (left < right) {
    if (s[left] != s[right]) {
      return false;
    }
    left++;
    right--;
  }
  return true;
}

void main() {
  print(longestPalindrome("abcde")); // Output: none
  print(longestPalindrome("azeghjhg")); // Output: ghjhg
  print(longestPalindrome("aaabvf")); // Output: aaa
}
