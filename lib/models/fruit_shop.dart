import 'package:flutter/material.dart';
import 'fruit.dart';

class FruitShop extends ChangeNotifier {
  final List<Fruit> _fruitshop = [
    Fruit(name: "Ananas", price: "50", imagePath: "Images/Ananas.jpg"),
    Fruit(name: "Banana", price: "40", imagePath: "Images/Banana.jpg"),
    Fruit(name: "Apple", price: "30", imagePath: "Images/Apple.jpg"),
    Fruit(name: "papaya", price: "20", imagePath: "Images/papaya.jpg"),
    Fruit(name: "Orange", price: "25", imagePath: "Images/Orange.jpg"),
    Fruit(name: "Strawberry", price: "60", imagePath: "Images/Strawberry.jpg"),
  ];

  List<Fruit> get getFruitList => _fruitshop;
}
