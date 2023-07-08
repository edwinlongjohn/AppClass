// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Welcome to my World",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
                color: Color(0xF0FFA602),
                height: 300,
                width: 500,
                child: Center(
                  child: Text(
                    'Welcome back Edwin',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                )),
            Text("Services"),
            Icon(
              Icons.account_circle_outlined,
              size: 60,
              color: Colors.orange,
            ),
            // ignore: prefer_const_literals_to_create_immutables
            Row(
              children: [
                Icon(Icons.access_alarm),
                Text("Press to play"),
              ],
            )
          ],
        ));
  }
}
