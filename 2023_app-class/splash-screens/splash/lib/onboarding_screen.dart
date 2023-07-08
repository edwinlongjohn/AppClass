// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:splash/home_page.dart';
import 'package:splash/intro_1.dart';
import 'package:splash/intro_2.dart';
import 'package:splash/intro_3.dart';
import 'package:splash/main.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({Key? key}) : super(key: key);

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  final PageController _controller = PageController();

  //check for the last page
  bool onLastPage = false;
  bool onSecondPage = false;
  int counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) => {
              setState(() {
                onLastPage = (index == 2);
              })
            },
            controller: _controller,
            children: [
              IntroPage1(title: 'Welcome Back'),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //previous
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text('Skip'),
                ),
                //dot indicator
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                    dotColor: Colors.white,
                    activeDotColor: Color(0xEA70F523),
                  ),
                ),
                //next
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomePage(
                                  title: 'Welcome',
                                );
                              },
                            ),
                          );
                        },
                        child: Text('Done'))
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 1000),
                              curve: Curves.easeInCubic);
                        },
                        child: Text('Next')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
