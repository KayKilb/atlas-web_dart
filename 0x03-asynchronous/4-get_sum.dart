import '4-util.dart';
import 'dart:convert';

Future<num> calculateTotal() async {
  try {
    // Fetch user data and extract the user ID
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    String userId = userMap['id'];

    // Fetch user orders
    String ordersJson = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(ordersJson) ?? [];

    // If orders list is empty, return -1
    if (orders.isEmpty) {
      return -1;
    }

    // Calculate the total price of the orders
    num totalPrice = 0;
    for (String product in orders) {
      String priceJson = await fetchProductPrice(product);
      num? price = jsonDecode(priceJson);

      // Handle case if product price is null
      if (price == null) {
        return -1;
      }
      totalPrice += price;
    }

    return totalPrice;
  } catch (e) {
    print('error caught: $e');
    return -1;
  }
}
