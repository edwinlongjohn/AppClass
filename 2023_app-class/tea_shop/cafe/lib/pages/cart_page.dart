// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_is_empty

import 'package:cafe/components/drink_tile.dart';
import 'package:cafe/models/drink.dart';
import 'package:cafe/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeItemFromCart(value) {
    Provider.of<BubbleTeaShop>(context, listen: false).removeFromCart(value);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "item removed successfully",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        titlePadding: EdgeInsets.only(bottom: 50.0, top: 10.0),
        icon: const Icon(
          Icons.check_circle,
          size: 30,
        ),
        iconColor: Color.fromARGB(255, 184, 204, 185),
        backgroundColor: Colors.brown[300],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleTeaShop>(
      builder: (context, value, child) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'My Cart',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              value.cart.length == 0
                  ? Column(
                      children: [
                        SizedBox(
                          height: 200,
                        ),
                        Center(
                          child: const Text(
                            textAlign: TextAlign.center,
                            'Empty ...',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 129, 128, 128)),
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: value.cart.length,
                          itemBuilder: (BuildContext context, int index) {
                            // get the individual drink
                            Drink drink = value.cart[index];
                            //return the listTile
                            return DrinkTile(
                              drink: drink,
                              onTap: () => removeItemFromCart(drink),
                              trailing: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          padding: EdgeInsets.symmetric(
                            vertical: 25.0,
                            horizontal: 100.0,
                          ),
                          child: Text(
                            'Make payement',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          color: Colors.brown,
                        )
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
