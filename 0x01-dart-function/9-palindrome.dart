bool isPalindrome(String s) {
  if (s.length < 3) return false;
  return s == s.split('').reversed.join('');
}

void main() {
  print(isPalindrome("aa"));
  print(isPalindrome("abcba"));
  print(isPalindrome("abcde"));
}
