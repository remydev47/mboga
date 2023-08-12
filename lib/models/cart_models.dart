import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  //list Items that are on sale
  final List _shopItems = [
    //[itemName, itemPrice, imagePath, colo]
    [
      "Avocado",
      "4.00",
      "assets/images/avocado.png",
      Colors.green,
    ],
    [
      "Banana",
      "3.50",
      "assets/images/banana.png",
      Colors.yellow,
    ],
    [
      "Chicken",
      "15.00",
      "assets/images/chicken.png",
      Colors.brown,
    ],
    [
      "Water",
      "1.00",
      "assets/images/water.png",
      Colors.blueAccent,
    ],
    [
      "Fruits",
      "40.00",
      "assets/images/fruits.png",
      Colors.orangeAccent,
    ],
    [
      "Spinach",
      "10.00",
      "assets/images/Spinach.png",
      Colors.green,
    ]
  ];
  //list of cart Items
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  //add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //Remove  item from cart
  void removeItemFromCart(int index) {
    _cartItems.remove(_shopItems[index]);
    notifyListeners();
  }

  //calculate total Price
  String calculateTotal(int index) {
    double totalPrice = 0;
    for (int i = 0; i <= _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
