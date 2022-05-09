// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:shopa_app/ui/Account/dashboard.dart';
import 'package:shopa_app/ui/Account/shop.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 

  List<Widget> _children = [
    Dashboard(),
    Shop(),
    Text('Account'),
    Text('Settings')
  ];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        showUnselectedLabels: true,
        // backgroundColor: Colors.red,
        elevation: 30,
        snakeShape: SnakeShape.circle,
        // behaviour: SnakeBarBehaviour.floating,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
      body: _children[_index],
    );
  }
}
