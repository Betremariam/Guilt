import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/fruit_shop.dart';
import 'models/vegitable_shop.dart';
import 'pages/home_page.dart';
import 'provider/cart_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => VegitableShop()),
        ChangeNotifierProvider(create: (_) => FruitShop()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
