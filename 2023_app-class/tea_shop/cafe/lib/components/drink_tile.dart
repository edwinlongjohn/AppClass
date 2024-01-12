import 'package:cafe/models/drink.dart';
import 'package:flutter/material.dart';

class DrinkTile extends StatelessWidget {
  Drink drink;
  void Function()? onTap;
  Widget trailing;
  DrinkTile(
      {super.key,
      required this.drink,
      required this.onTap,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(10.0)),
        child: Card(
          elevation: 10,
          shadowColor: Colors.black,
          color: Colors.transparent,
          child: ListTile(
              title: Text(
                drink.name,
                style: TextStyle(fontSize: 16),
              ),
              horizontalTitleGap: 30,
              //minLeadingWidth: 50,
              style: ListTileStyle.drawer,
              //isThreeLine: true,
              subtitle: Text(drink.price),
              minVerticalPadding: -50,
              //CircleAvatar(backgroundImage: AssetImage(drink.imagePath))
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(drink.imagePath)),
              trailing: trailing),
        ),
      ),
    );
  }
}
