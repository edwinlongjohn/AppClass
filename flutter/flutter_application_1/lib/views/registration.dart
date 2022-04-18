// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Onsuccessful extends StatelessWidget {
  const Onsuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      // ignore: prefer_const_literals_to_create_immutables
      child: Column(
        children: [
          Text(
            //0xffandcolor
            "Congratulation, Now You are registered",
            style: TextStyle(
                fontSize: 40, color: Color.fromARGB(255, 197, 10, 72)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Go back"),
          )
        ],
      ),
    ));
  }
}
