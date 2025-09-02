import 'package:flutter/material.dart';
import '/../models/fruit_shop.dart';
import 'package:provider/provider.dart';
import '/../provider/cart_provider.dart';

class FruitPage extends StatelessWidget {
  FruitPage({super.key});

  @override
  Widget build(BuildContext context) {
    final shop = FruitShop();
    final fruitList = shop.getFruitList;
    return Scaffold(
      appBar: AppBar(title: Text("fruit shop")),
      body: ListView.builder(
        itemCount: fruitList.length,
        itemBuilder: (context, index) {
          final fruit = fruitList[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
            child: ListTile(
              leading: Image.asset(
                fruit.imagePath,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
                errorBuilder:
                    (context, error, stackTrace) => Text("image donot found"),
              ),
              title: Text(fruit.name),
              subtitle: Text('price:${fruit.price}'),
              trailing: Consumer<CartProvider>(
                builder: (context, cart, child) {
                  return IconButton(
                    onPressed: () {
                      cart.addItem(fruit);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("${fruit.name} added to cart!")),
                      );
                    },
                    icon: Icon(Icons.add_shopping_cart),
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
