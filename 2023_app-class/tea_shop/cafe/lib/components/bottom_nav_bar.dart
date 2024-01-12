import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 0.0),
      child: CurvedNavigationBar(
        backgroundColor: Colors.brown.shade200,
        color: Colors.brown.shade400,
        animationDuration: Duration(milliseconds: 300),
        onTap: (value) => onTabChange!(value),
        items: [
          Icon(
            size: 25.0,
            Icons.home,
            color: const Color.fromARGB(255, 224, 223, 223),
          ),
          Icon(
            size: 25.0,
            Icons.shop_2_rounded,
            color: const Color.fromARGB(255, 224, 223, 223),
          ),
        ],
      ),
      // child: GNav(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   activeColor: Colors.white,
      //   color: Colors.grey[300],
      //   tabActiveBorder: Border.all(color: Colors.white),
      //   gap: 8,
      //   onTabChange: (value) => onTabChange!(value),
      //   tabs: [
      //     GButton(
      //       icon: Icons.home,
      //       text: "Home",
      //     ),
      //     GButton(
      //       icon: Icons.shop_2_rounded,
      //       text: "Cart",
      //     )
      //   ],
      // ),
    );
  }
}
