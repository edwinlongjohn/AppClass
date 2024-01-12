import 'package:cafe/models/drink.dart';
import 'package:flutter/material.dart';

class BubbleTeaShop extends ChangeNotifier {
  //list of drinks for sale
  final List<Drink> _shop = [
    Drink(
      name: 'Pearl Milk Tea',
      price: "4.00",
      imagePath: "lib/images/coffee-3.jpg",
    ),
    Drink(
      name: 'Lipton Yellow Label Tea',
      price: "NGN 20.00",
      imagePath: "lib/images/coffe-2.jpg",
    ),
    Drink(
      name: 'Turmeric Tea',
      price: "NGN 600.00",
      imagePath: "lib/images/brown-6.jpg",
    ),
    Drink(
      name: 'Soursop Tea',
      price: "NGN 1000.00",
      imagePath: "lib/images/brown-3.jpg",
    ),
    Drink(
      name: 'Black Tea',
      price: "NGN 540.00",
      imagePath: "lib/images/brown-4.jpg",
    ),
    Drink(
      name: 'Green Tea',
      price: "NGN 300.00",
      imagePath: "lib/images/green-tea.jpg",
    ),
    Drink(
      name: 'Rooibos Tea',
      price: "NGN 2000.00",
      imagePath: "lib/images/rooibos.jpg",
    ),
    Drink(
      name: 'Fennel Tea',
      price: "NGN 200.00",
      imagePath: "lib/images/Fennel.jpg",
    ),
    Drink(
      name: 'Jasmine Tea',
      price: "NGN 300.00",
      imagePath: "lib/images/Jasmine.jpg",
    ),
    Drink(
      name: 'Rosehip Tea',
      price: "NGN 800.00",
      imagePath: "lib/images/rose.jpg",
    ),
  ];
  //list of drinks in the user's cart
  final List<Drink> _userCart = [];
  //get drinks for sale
  List<Drink> get shop => _shop;
  // get user cart
  List<Drink> get cart => _userCart;
  // add drink to cart
  void addToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }

  // remove drink from cart
  void removeFromCart(Drink drink) {
    _userCart.remove(drink);
    notifyListeners();
  }
}
