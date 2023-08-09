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
  get shopItems => _shopItems;
}
