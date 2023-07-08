// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFE9CA1B),
      child: Center(
        child: Text(
          'Get Started',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
