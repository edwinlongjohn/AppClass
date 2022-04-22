// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopa_app/ui/auth/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Welcome to Shopa',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "The best online shopping Store",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                "Name",
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Full Name',
                ),
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
                  onPressed: () {},
                  child: Text("Register"),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  child: Text(
                    "Login here",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
