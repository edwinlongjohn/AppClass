// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopa_app/ui/Account/home.dart';
import 'package:shopa_app/ui/auth/register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Text(
                    'Welcome to Shopa',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "The best online shopping Store",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                SizedBox(height: 10),
                Text(
                  "Email",
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Password",
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'password',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                    },
                    child: Text("Login"),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ),
                        );
                      },
                      child: Text("Forgot Password"),
                    ),
                    GestureDetector(
                      child: Text("Sign Up"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
