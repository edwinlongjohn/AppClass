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

  //most popular shoes.
  List<Shoe> mostPopular = [
    Shoe(
        name: 'Harden Vol. 6',
        price: '\$90',
        imagePath: 'lib/images/image_yellow_shoe.png',
        description: 'Adidas',
        rating: '4.0',
        color: 0xffFCF7DE),
    Shoe(
      name: 'Nike Air Force 1 ‘07 LV8',
      price: '\$80',
      imagePath: 'lib/images/shoe_green.png',
      description: 'NIKE',
      rating: '4.8',
      color: 0xffDEFDE0,
    ),
    Shoe(
      name: 'Air Jordan 1 Low SE',
      price: '\$120',
      imagePath: 'lib/images/nike_shoe_ai_2.jpg',
      description: 'NIKE',
      rating: '4.8',
      color: 0xffFFDBA4,
    ),
    Shoe(
      name: 'Air Jordan 6 Retro',
      price: '\$150',
      imagePath: 'lib/images/nike_shoe_ai_3.jpg',
      description: 'NIKE',
      rating: '4.8',
      color: 0xffFFDBA9,
    ),
    Shoe(
      name: 'Gel Lyte III OG Wisteria',
      price: '\$150',
      imagePath: 'lib/images/ai_nike.jpg',
      description: 'ASICS',
      rating: '4.2',
      color: 0xffF0EAFF,
    ),
  ];
//list of items in user cart
  List<Shoe> userCart = [];
  //get most popular shoes
  List<Shoe> getMostPopularShoes() {
    return mostPopular;
  }

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
