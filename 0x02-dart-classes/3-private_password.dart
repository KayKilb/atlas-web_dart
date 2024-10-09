class Password {
  String _password = '';

  Password({required String password}) : _password = password;

  String get password => _password;
  set password(String value) => _password = value;

  bool isValid() {
    return _password.length >= 8 &&
        _password.length <= 16 &&
        _password.contains(RegExp(r'[A-Z]')) &&
        _password.contains(RegExp(r'[a-z]')) &&
        _password.contains(RegExp(r'[0-9]'));
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}

void main() {
  final ps = Password(password: "Passwordcode");
  print(ps);
  print(ps.isValid());

  final ps2 = Password(password: "PasswordDecode3");
  print(ps2);
  print(ps2.isValid());
}
