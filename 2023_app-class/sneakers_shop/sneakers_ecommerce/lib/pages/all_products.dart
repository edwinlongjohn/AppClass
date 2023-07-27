import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_ecommerce/models/cart.dart';

import '../components/products.dart';
import '../models/shoe.dart';

class AllProducts extends StatefulWidget {
  const AllProducts({super.key});

  @override
  State<AllProducts> createState() => _AllProductsState();
}

class _AllProductsState extends State<AllProducts> {
  //add shoe to cart
  void addToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        backgroundColor: Colors.black,
        title: Text(
          'Product Added',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        content: Text(
          'Product added to cart successfully',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Latest Products',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey[900],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: value.getShoeList().length,
                itemBuilder: (BuildContext context, int index) {
                  Shoe shoe = value.getShoeList()[index];
                  return MyProducts(
                    shoe: shoe,
                    onTap: () {
                      addToCart(shoe);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
