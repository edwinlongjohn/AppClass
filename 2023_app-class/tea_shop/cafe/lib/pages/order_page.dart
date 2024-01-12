import 'package:cafe/models/drink.dart';
import 'package:cafe/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatefulWidget {
  Drink drink;
  OrderPage({
    super.key,
    required this.drink,
  });

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  double sweetValue = 0.5;
  double iceValue = 0.5;
  double pearlValue = 0.5;
  void customizeSweet(double newValue) {
    setState(() {
      sweetValue = newValue;
    });
  }

  void customizeIce(double newValue) {
    setState(() {
      iceValue = newValue;
    });
  }

  void customizePearl(double newValue) {
    setState(() {
      pearlValue = newValue;
    });
  }

  void addToCart() {
    //firstly, add to cart
    Provider.of<BubbleTeaShop>(context, listen: false).addToCart(widget.drink);

    //go to shop page
    Navigator.pop(context);
    //notify user that it has been added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "Successfully added to cart",
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.drink.name),
      ),
      backgroundColor: Colors.brown[200],
      body: Column(
        children: [
          //drink image
          Image.asset(widget.drink.imagePath),

          //sliders to customize drink
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                //sweetness slider
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Text('Sweet'),
                      width: 100,
                    ),
                    Expanded(
                      child: Slider(
                        value: sweetValue,
                        label: sweetValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizeSweet(value),
                      ),
                    ),
                  ],
                ),

                //ice slider
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Text('Ice'),
                      width: 100,
                    ),
                    Expanded(
                      child: Slider(
                        value: iceValue,
                        label: iceValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizeIce(value),
                      ),
                    ),
                  ],
                ),

                //pearls slider
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      child: Text('Pearl'),
                      width: 100,
                    ),
                    Expanded(
                      child: Slider(
                        value: pearlValue,
                        label: pearlValue.toString(),
                        divisions: 4,
                        onChanged: (value) => customizePearl(value),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //add to cart button
          MaterialButton(
            onPressed: addToCart,
            padding: EdgeInsets.symmetric(
              vertical: 25.0,
              horizontal: 100.0,
            ),
            child: Text(
              'Add to cart',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.brown,
          )
        ],
      ),
    );
  }
}
