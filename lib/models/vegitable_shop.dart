import 'vegitable.dart';

class VegitableShop {
  final List<Vegitable> _vegitableShop = [
    Vegitable(name: "Tomato", price: "30", imagePath: "Images/tommato.jpg"),
    Vegitable(name: "Cabbage", price: "30", imagePath: "Images/Cabbage.jpg"),
    Vegitable(name: "Carrot", price: "30", imagePath: "Images/Carrot.jpg"),
    Vegitable(name: "Onion", price: "30", imagePath: "Images/Onion.jpg"),
    Vegitable(name: "Redroot", price: "30", imagePath: "Images/redroot.jpg"),
  ];
  final List<Vegitable> _cart = [];
  List<Vegitable> get getVegitableList => _vegitableShop;
  List<Vegitable> get getCartList => _cart;
  void addToCart(Vegitable vegitable) {
    _cart.add(vegitable);
  }

  void removeFromCart(Vegitable vegitable) {
    _cart.remove(vegitable);
  }
}
