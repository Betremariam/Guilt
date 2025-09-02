import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final List<dynamic> _cartItems = [];

  List<dynamic> get cartItems => _cartItems;

  void addItem(dynamic item) {
    _cartItems.add(item);
    notifyListeners();
  }

  void removeItem(dynamic item) {
    _cartItems.remove(item);
    notifyListeners();
  }
}
