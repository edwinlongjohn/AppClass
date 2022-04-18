// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/onboarding.dart';
import 'package:flutter_application_1/views/registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 40,
            fontWeight:FontWeight.w700,

          ),
         ),
        elevatedButtonTheme:ElevatedButtonThemeData(
        
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
        ),
      ),
      
      ),
      home: Onboarding(),
    );
    return materialApp;
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
        body: SingleChildScrollView(
          child: Padding(
            //padding only Edgeinsets.only(left:10,right:20,top:50,bottom:90 also EdgeInsets.symmetric(horizontal:20, vertical:30))
            padding: const EdgeInsets.symmetric(horizontal: 85, vertical: 102),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  //0xffandcolor
                  "hello world",
                  style: TextStyle(
                      fontSize: 40, color: Color.fromARGB(255,197, 10, 72)),
                ),
                SizedBox(height: 90),
                Icon(
                  Icons.maps_home_work,
                  size: 40,
                  color: Colors.blue,
                ),
                 Text(
                  //0xffandcolor
                  "Texting the microphone",
                  style:Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
          ),
        ));
  }
}
