// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:shopa/ui/widgets/product_widget.dart';
import 'package:http/http.dart' as http;

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  Future<void> getProducts() async {
    print('loading. . .');
    var url = Uri.parse('https://fakestoreapi.com/products');
    final response = await http.get(url);
    print(response.body);
  }

  @override
  void initState() {
    // TODO: implement initState
    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text('Shop Page', style: Theme.of(context).textTheme.headline4),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                childAspectRatio: 1 / 1.4,
              ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                //return ProductWidget(product: products[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
