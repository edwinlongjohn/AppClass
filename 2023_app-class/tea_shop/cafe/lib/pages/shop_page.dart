import 'package:cafe/components/drink_tile.dart';
import 'package:cafe/models/drink.dart';
import 'package:cafe/models/shop.dart';
import 'package:cafe/pages/order_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void goToOrderPage(Drink drink) {
    //navigate to the order page
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => OrderPage(drink: drink)));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleTeaShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(children: [
              //heading
              const Text(
                "LeeTea Shop",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //list of drinks for sale
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: value.shop.length,
                itemBuilder: (BuildContext context, int index) {
                  //get the drink from the shop
                  Drink individualDrink = value.shop[index];
                  //return the nice tile
                  return DrinkTile(
                    drink: individualDrink,
                    onTap: () => goToOrderPage(individualDrink),
                    trailing: Icon(Icons.navigate_next),
                  );
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
