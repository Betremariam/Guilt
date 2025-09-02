import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartItems = context.watch<CartProvider>().cartItems;

    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return ListTile(
            leading: Image.asset(item.imagePath, width: 50, height: 50),
            title: Text(item.name),
            subtitle: Text('Price: ${item.price}'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                context.read<CartProvider>().removeItem(item);
              },
            ),
          );
        },
      ),
    );
  }
}
