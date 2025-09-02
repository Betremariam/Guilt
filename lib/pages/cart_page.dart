import 'package:flutter/material.dart';
import 'package:test11/models/fruit_shop.dart';
import 'package:test11/models/vegitable.dart';
import 'package:test11/models/vegitable_shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = VegitableShop();
    final cart2 = FruitShop();
    final cartList = cart.getCartList;
    final cartList2 = cart2.getCartList;

    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final all = cartList[index] + cartList2[index];
        },
      ),
    );
  }
}
