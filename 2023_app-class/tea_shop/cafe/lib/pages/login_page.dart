// ignore_for_file: prefer_const_constructors

import 'package:cafe/pages/home_page.dart';
import 'package:cafe/pages/register_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formField = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade200,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10.0,
        ),
        child: Form(
          key: _formField,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'lib/images/bg-1.png',
                width: 180,
                height: 180,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'LeeTea is Life',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              //two input field for email and password
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: const InputDecoration(
                  label: Text("Email"),
                  floatingLabelStyle:
                      TextStyle(color: Color.fromARGB(255, 221, 220, 220)),
                  //all about borders
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 161, 138, 130)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 201, 200, 200),
                      width: 1.0,
                    ),
                  ),
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  bool regEx =
                      RegExp(r"^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$")
                          .hasMatch(value!);
                  if (value.isEmpty) {
                    return "Enter Email";
                  } else if (!regEx) {
                    return "Enter Valid Email";
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: passController,
                obscureText: passToggle,
                decoration: InputDecoration(
                  label: Text("Password"),
                  floatingLabelStyle:
                      TextStyle(color: Color.fromARGB(255, 221, 220, 220)),
                  //all about borders
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 161, 138, 130)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 201, 200, 200),
                      width: 1.0,
                    ),
                  ),

                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        passToggle = !passToggle;
                      });
                    },
                    child: Icon(
                        passToggle ? Icons.visibility_off : Icons.visibility),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Password";
                  }

                  if (passController.text.length <= 8) {
                    return "The password characters must be greater than 8";
                  }
                },
              ),

              //forgot password
              Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Colors.grey[100],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //signup button
              // InkWell(
              //   onTap: () {},
              //   child: Container(
              //     height: 50,
              //     decoration: BoxDecoration(
              //       color: Colors.brown[300],
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     child: Center(
              //       child: Text(
              //         "Sign In",
              //         style: TextStyle(
              //           color: Colors.white,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ),
              //   ),
              // )
              ElevatedButton(
                  onPressed: () {
                    if (_formField.currentState!.validate()) {
                      emailController.clear();
                      passController.clear();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(65),
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )),
              const SizedBox(
                height: 25,
              ),
              //divider
              Row(children: [
                Expanded(
                  child: Container(
                    width: 110,
                    height: .5,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Or continue with",
                  style: TextStyle(
                    color: Colors.grey[200],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: .5,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 20,
              ),
              //images for goggle and apple
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(13),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: Color.fromARGB(255, 231, 230, 230),
                          width: 1.0,
                        )),
                    child: Image.asset(
                      'lib/images/goggle-logo.png',
                      width: 1,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: Color.fromARGB(255, 223, 222, 222),
                          width: 1.0,
                        )),
                    child: Image.asset(
                      'lib/images/apple-logo.png',
                      width: 50,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 20,
              ),
              //register
              Text.rich(
                TextSpan(
                    text: 'Not a member? ',
                    style: TextStyle(
                      color: Colors.grey[100],
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                          text: ' Register Now?',
                          style: TextStyle(
                            color: Colors.brown[600],
                            fontWeight: FontWeight.w600,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPage()));
                            }),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
