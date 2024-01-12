import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('horizontal cards'),
      ),
      body: SingleChildScrollView(
        //scrollDirection: Axis.horizontal,
        child: Column(children: [
          buildHorizontalScrowView(),
          SmoothPageIndicator(
            count: 4,
            controller: _controller,
            axisDirection: Axis.horizontal,
            effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
          ),
        ]),
      ),
    );
  }

  Widget buildHorizontalScrowView() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      height: 200.0,
      width: 350,
      // Set the height as needed
      child: ListView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          Container(
            width: 150.0, // Set the width of each item
            margin: EdgeInsets.all(5.0),
            color: Colors.blue,
            child: Center(
              child: Text('Item'),
            ),
          ),
          Container(
            width: 150.0, // Set the width of each item
            margin: EdgeInsets.all(5.0),
            color: Colors.blue,
            child: Center(
              child: Text('Item'),
            ),
          ),
          Container(
            width: 150.0, // Set the width of each item
            margin: EdgeInsets.all(5.0),
            color: Colors.blue,
            child: Center(
              child: Text('Item'),
            ),
          ),
          Container(
            width: 150.0, // Set the width of each item
            margin: EdgeInsets.all(5.0),
            color: Colors.blue,
            child: Center(
              child: Text('Item'),
            ),
          ),
        ],
      ),
    );
  }
}
