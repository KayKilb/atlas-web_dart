import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> data = jsonDecode(userData);
    return 'Hello ${data['username']}';
  } catch (e) {
    return 'error caught: \$e';
  }
}

Future<String> loginUser() async {
  try {
    bool isLoggedIn = await checkCredentials();
    print('There is a user: $isLoggedIn');
    return isLoggedIn ? await greetUser() : 'Wrong credentials';
  } catch (e) {
    return 'error caught: $e';
  }
}
