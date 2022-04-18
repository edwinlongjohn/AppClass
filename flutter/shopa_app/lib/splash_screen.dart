// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:shopa_app/main.dart';
import 'package:shopa_app/ui/auth/register.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    nextPage();
  }

  Future<void> nextPage() async {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Register(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      body: Center(
        child: Text(
          'SHOPA',
          style: Theme.of(context)
              .textTheme
              .headline1
              ?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
