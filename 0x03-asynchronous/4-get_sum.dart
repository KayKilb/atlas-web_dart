import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    // Fetch user data and extract the user ID
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    String userId = userMap['id'];

    // Fetch user orders
    String ordersJson = await fetchUserOrders(userId);
    List<dynamic>? orders = jsonDecode(ordersJson);

    // If orders is null or empty, return 0.0
    if (orders == null || orders.isEmpty) {
      return 0.0;
    }

    // Calculate the total price of the orders
    double total = 0;
    for (String product in orders) {
      String priceJson = await fetchProductPrice(product);
      double? price = jsonDecode(priceJson);

      // Handle case if product price is null
      if (price != null) {
        total += price;
      }
    }

    return total;
  } catch (e) {
    print('error caught: $e');
    return -1.0;
  }
}
