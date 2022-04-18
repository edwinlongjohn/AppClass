// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/auth/login.dart';
import 'package:flutter_application_1/views/registration.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 60.0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Onsuccessful(),
                          ));
                    },
                    child: Text('Hello')),
                SizedBox(width: 40),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                      },
                      child: Text('Login'), style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 66, 255, 164))
                      ),
                      ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
