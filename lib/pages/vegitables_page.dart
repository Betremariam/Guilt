import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test11/provider/cart_provider.dart';
import '../models/vegitable_shop.dart';

class VegitablesPage extends StatelessWidget {
  const VegitablesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // For demo, create a shop instance. In real app, use Provider for shop state.
    final shop = VegitableShop();
    final vegList = shop.getVegitableList;

    return Scaffold(
      appBar: AppBar(title: const Text('Vegetables')),
      body: ListView.builder(
        itemCount: vegList.length,
        itemBuilder: (context, index) {
          final veg = vegList[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: Image.asset(
                veg.imagePath,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
                errorBuilder:
                    (context, error, stackTrace) =>
                        const Icon(Icons.image_not_supported),
              ),
              title: Text(veg.name),
              subtitle: Text('Price: ${veg.price}'),
              trailing: Consumer<CartProvider>(
                builder: (context, cart, child) {
                  return IconButton(
                    icon: const Icon(Icons.add_shopping_cart),
                    onPressed: () {
                      cart.addItem(veg);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('${veg.name} added to cart!')),
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
