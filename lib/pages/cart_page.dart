import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = CartProvider();
    final cartList = cart.cartItems;
    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final carts = cartList[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: ListTile(
              leading: Image.asset(
                carts.imagePath,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
                errorBuilder:
                    (context, error, stackTrace) =>
                        const Icon(Icons.image_not_supported),
              ),
              title: Text(carts.name),
              subtitle: Text('price:${carts.price}'),
              trailing: Consumer<CartProvider>(
                builder: (context, cart, child) {
                  return IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      cart.removeItem(cart);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${carts.name} removed succesfully'),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
