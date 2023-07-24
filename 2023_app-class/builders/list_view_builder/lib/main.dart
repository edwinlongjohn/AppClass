import 'package:flutter/material.dart';
import 'package:list_view_builder/pages/home_page.dart';
//import 'package:list_view_builder/pages/grid_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
