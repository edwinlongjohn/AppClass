import 'package:flutter/material.dart';

class IntroPage2 extends StatefulWidget {
  IntroPage2({Key? key}) : super(key: key);

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  int counter = 0;
  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFFFCCE02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _incrementCounter,
              child: Text(
                'Increase me',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Text( 
              // padding:EdgeInsets.all(10),
              // '${counter}',
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ));
  }
}
