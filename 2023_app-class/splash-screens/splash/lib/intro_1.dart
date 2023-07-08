import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(child: Text('Welcome to Exquisite ${title}')),
    );
  }
}
