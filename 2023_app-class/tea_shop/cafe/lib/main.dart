import 'package:cafe/models/shop.dart';
import 'package:cafe/pages/about.dart';
import 'package:cafe/pages/home_page.dart';
import 'package:cafe/pages/login_page.dart';
import 'package:cafe/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BubbleTeaShop(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.brown),
        home: LoginPage(),
      ),
    );
  }
}
