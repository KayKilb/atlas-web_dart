class Password {
  String password = '';

  bool isValid() {
    return password.length >= 8 &&
        password.length <= 16 &&
        password.contains(RegExp(r'[A-Z]')) &&
        password.contains(RegExp(r'[a-z]')) &&
        password.contains(RegExp(r'[0-9]'));
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}

void main() {
  final ps = Password();
  ps.password = "Just3z";
  print(ps.isValid()
      ? "${ps.password} is a Valid Password"
      : "${ps.password} is Not a Valid Password");
  print(ps);

  ps.password = "ShouldWorkf7ne";
  print(ps.isValid()
      ? "${ps.password} is a Valid Password"
      : "${ps.password} is Not a Valid Password");
  print(ps);
}
