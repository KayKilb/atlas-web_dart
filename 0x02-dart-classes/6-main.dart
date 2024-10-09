void main() {
  final djo = User(
    id: 1,
    name: "Djo",
    age: 25,
    height: 1.89,
    user_password: "Azert23defde",
  );
  print('<===========Json=========>:\n');
  print(djo.toJson());

  Map<String, dynamic> map = {
    'id': 3,
    'name': 'Youssef',
    'age': 26,
    'height': 1.9,
    'user_password': "Azert23defde",
  };
  final youssef = User.fromJson(map);

  print('\n<===========Test1===========>:\n');
  print(djo.toString());
  print(youssef.toString());

  print('\n<===========Test2===========>:\n');
  djo.userPassword.password = "holberton98";
  youssef.userPassword.password = "AZERfghn6789";
  print(djo.toString());
  print(youssef.toString());
}
