// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String tileImagePath;
  final String tileTitleText;
  final String tileSubTitleText;
  const MyListTile({
    Key? key,
    required this.tileImagePath,
    required this.tileTitleText,
    required this.tileSubTitleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Card(
        elevation: 12.0,
        shadowColor: Colors.grey,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            ListTile(
              leading: Container(
                padding: EdgeInsets.all(8.0),
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 169, 232, 252),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(tileImagePath),
              ),
              title: Text(
                tileTitleText,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                tileSubTitleText,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  height: 2.0,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
