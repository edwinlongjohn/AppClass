import 'package:flutter/material.dart';
import 'package:sneakers_ecommerce/models/shoe.dart';

class Cart extends ChangeNotifier {
//list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Price',
      price: '\$5000',
      imagePath: 'lib/images/shoe_1.jpg',
      description: 'beauty and quality is our pride.',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '\$1000',
      imagePath: 'lib/images/shoe_2.jpg',
      description:
          'You\'ve got the hops and the speed-lace up in shoes that enhance ',
    ),
    Shoe(
      name: 'KD TREYS',
      price: '\$400',
      imagePath: 'lib/images/shoe_3.jpg',
      description: 'beauty and quality is our pride.',
    ),
    Shoe(
      name: 'Kyrie 6',
      price: '\$190',
      imagePath: 'lib/images/shoe_4.jpg',
      description: 'beauty and quality is our pride.',
    ),
    Shoe(
      name: 'KD TREYS',
      price: '\$400',
      imagePath: 'lib/images/shoe_5.jpg',
      description: 'beauty and quality is our pride.',
    ),
  ];

//list of items in user cart
  List<Shoe> userCart = [];
//get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

//get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

//add items to the cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

//remove items from the cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
