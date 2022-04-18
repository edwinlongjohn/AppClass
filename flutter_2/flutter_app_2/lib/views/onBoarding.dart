// ignore_for_file: prefer_equal_for_default_values

import 'dart:ui';

import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  final String _imgName;

   Onboarding(this._imgName);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:85.0, vertical:102),
      child: Container(
        child: Image.asset(
          _imgName,
          fit: BoxFit.cover,
        ),
       
      ),
    );
  }
}
