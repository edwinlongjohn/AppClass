import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_ecommerce/models/cart.dart';
//import 'package:sneakers_ecommerce/pages/all_products.dart';
//import 'package:sneakers_ecommerce/pages/home_page.dart';
import 'package:sneakers_ecommerce/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((context) => Cart()),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
