// ignore_for_file: prefer_const_constructors

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopa_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w100,
          ),
          headline2: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.bold,
            color: Color(0xff0C1A30),
          ),
          bodyText1: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 16,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
            fillColor: Color(0xffc4c5c4),
            filled: true,
            border: InputBorder.none),
      ),
      home: const Splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
