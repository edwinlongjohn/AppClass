// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopa_app/ui/Account/dashboard.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> products = [
    {
      'title': "Freedpods",
      'price': 20000,
      'image': 'assets/images/p1.png',
      'reviews': {'star': 5.0, 'count': 20}
    },
    {
      'title': "Drilling Machine",
      'price': 50000.000,
      'image': 'assets/images/p2.png',
      'reviews': {'star': 4.5, 'count': 20}
    },
    {
      'title': "Oraimo EarPiece",
      'price': 2000,
      'image': 'assets/images/p3.png',
      'reviews': {'star': 4.0, 'count': 20}
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Mega Mall",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        //this is used to remove that arrow at the app bar
        automaticallyImplyLeading: false,
        elevation: 0.5,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 29,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Icon(Icons.notifications),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Dashboard(),
    );
  }
}
