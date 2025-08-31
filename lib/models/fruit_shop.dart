import 'fruit.dart';

class FruitShop {
  final List<Fruit> _fruitshop = [
    Fruit(name: "Ananas", price: "50", imagePath: "Images/Ananas.jpg"),
    Fruit(name: "Banana", price: "40", imagePath: "Images/Banana.jpg"),
    Fruit(name: "Apple", price: "30", imagePath: "Images/Apple.jpg"),
    Fruit(name: "papaya", price: "20", imagePath: "Images/papaya.jpg"),
    Fruit(name: "Orange", price: "25", imagePath: "Images/Orange.jpg"),
    Fruit(name: "Strawberry", price: "60", imagePath: "Images/Strawberry.jpg"),
  ];
  final List<Fruit> _cart = [];
  List<Fruit> get getFruitList => _fruitshop;
  List<Fruit> get getCartList => _cart;

  void addToCart(Fruit fruit) {
    _cart.add(fruit);
  }

  void removeFromCart(Fruit fruit) {
    _cart.remove(fruit);
  }
}
