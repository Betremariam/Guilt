import 'package:flutter/material.dart';
import 'vegitable.dart';

class VegitableShop extends ChangeNotifier {
  final List<Vegitable> _vegitableShop = [
    Vegitable(name: "Tomato", price: "30", imagePath: "Images/tommato.jpg"),
    Vegitable(name: "Cabbage", price: "30", imagePath: "Images/Cabbage.jpg"),
    Vegitable(name: "Carrot", price: "30", imagePath: "Images/Carrot.jpg"),
    Vegitable(name: "Onion", price: "30", imagePath: "Images/Onion.jpg"),
    Vegitable(name: "Redroot", price: "30", imagePath: "Images/redroot.jpg"),
  ];
  List<Vegitable> get getVegitableList => _vegitableShop;
}
