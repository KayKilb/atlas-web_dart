import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  String userData = await fetchUserData();
  Map<String, dynamic> data = jsonDecode(userData);
  return data['id'];
}
