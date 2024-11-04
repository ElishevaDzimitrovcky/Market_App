import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = const [
    ["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
    ["Banana", "2.50", "lib/images/banana.png", Colors.yellow],
    ["Chicken", "12.80", "lib/images/chicken.png", Colors.brown],
    ["Water", "1.00", "lib/images/water.png", Colors.blue],
  ];

  final List _cartItems = [];
  double _totalPrice = 0;

  List get cartItems => _cartItems;
  List get shopItems => _shopItems;
  String get totalPrice => _totalPrice.toStringAsFixed(2);

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    _totalPrice += double.parse(_shopItems[index][1]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _totalPrice -= double.parse(_cartItems[index][1]);
    _cartItems.removeAt(index);
    notifyListeners();
  }
}
