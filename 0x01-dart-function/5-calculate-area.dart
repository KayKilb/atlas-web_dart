double calculateArea(double height, double base) {
  return double.parse(((height * base) / 2).toStringAsFixed(2));
}

void main() {
  print(calculateArea(20, 7));
  print(calculateArea(10, 7));
  print(calculateArea(8.5, 3.7));
}
