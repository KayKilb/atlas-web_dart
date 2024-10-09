import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> data = jsonDecode(userData);
    String userId = data['id'];

    String ordersJson = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(ordersJson);

    double total = 0;
    for (var product in orders) {
      String priceJson = await fetchProductPrice(product);
      double price = jsonDecode(priceJson);
      total += price;
    }
    return total;
  } catch (e) {
    return -1;
  }
}
