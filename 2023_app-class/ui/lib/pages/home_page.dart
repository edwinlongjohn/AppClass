// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui/util/my_button.dart';
import 'package:ui/util/my_card.dart';
import 'package:ui/util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          child: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 32,
                color: Colors.pink[400],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 32,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(
                          fontSize: 28.0,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 196, 193, 193),
                    ),
                    child: Icon(Icons.add),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            //Cards

            Container(
              //alignment: Alignment(0, 0.75),
              height: 200,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(
                    balance: 525000.20,
                    cardNumber: 12345678,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Color.fromARGB(255, 75, 1, 212),
                    cardTypeImage: 'lib/icon/master-card.png',
                    chipImage: 'lib/icon/chip.png',
                  ),
                  MyCard(
                    balance: 80000.20,
                    cardNumber: 246810,
                    expiryMonth: 11,
                    expiryYear: 24,
                    color: Color.fromARGB(255, 119, 154, 250),
                    cardTypeImage: 'lib/icon/visa.png',
                    chipImage: 'lib/icon/chip_1.png',
                  ),
                  MyCard(
                    balance: 525000.20,
                    cardNumber: 12359878,
                    expiryMonth: 08,
                    expiryYear: 25,
                    color: Color.fromARGB(255, 20, 243, 187),
                    cardTypeImage: 'lib/icon/master-card.png',
                    chipImage: 'lib/icon/chip.png',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // 3 Dots
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),
            ),
            SizedBox(height: 40),
            //3 Buttons.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //send button
                  MyButton(
                    iconImagePath: 'lib/icon/send-money.png',
                    buttonText: 'Send',
                  ),
                  MyButton(
                    iconImagePath: 'lib/icon/credit-card.png',
                    buttonText: 'Pay',
                  ),
                  MyButton(
                    iconImagePath: 'lib/icon/bill.png',
                    buttonText: 'Bills ',
                  ),

                  //
                ],
              ),
            ),
            SizedBox(height: 40),
            //column -> stats + transaction
            MyListTile(
              tileImagePath: 'lib/icon/analysis.png',
              tileTitleText: 'Statistics',
              tileSubTitleText: 'Payments and Incomes',
            ),
            SizedBox(height: 10),
            MyListTile(
              tileImagePath: 'lib/icon/money-transfer.png',
              tileTitleText: 'Transactions',
              tileSubTitleText: 'Transaction History',
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
