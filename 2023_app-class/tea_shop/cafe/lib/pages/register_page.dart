// ignore_for_file: prefer_const_constructors

import 'package:cafe/pages/home_page.dart';
import 'package:cafe/pages/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formField = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  //final confirmPassController = TextEditingController();
  bool seePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      body: SingleChildScrollView(
        child: Form(
          key: _formField,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Icon(
                  Icons.lock_open_rounded,
                  color: Colors.brown[400],
                  size: 80,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Welcome to LeeTee, where the world of exquisite teas awaits you! Register now to unlock a world of unique flavors, carefully curated blends, and the finest tea experiences.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 238, 236, 236),
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: userNameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please fill the username field';
                    }
                  },
                  decoration: InputDecoration(
                    label: Text('Username'),
                    floatingLabelStyle:
                        TextStyle(color: Color.fromARGB(255, 221, 220, 220)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      gapPadding: 50.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 161, 138, 130),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 161, 138, 130),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    bool correctEmail =
                        RegExp(r"^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$")
                            .hasMatch(value!);
                    if (!correctEmail) {
                      return 'invalid Email Address';
                    } else if (value.isEmpty) {
                      return 'Enter your email address';
                    }
                  },
                  decoration: InputDecoration(
                    label: Text('email'),
                    floatingLabelStyle:
                        TextStyle(color: Color.fromARGB(255, 221, 220, 220)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 161, 138, 130),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 161, 138, 130),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: phoneController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Phone number";
                    }
                    final length = value.length;
                    if (length < 11 || length > 11) {
                      return "Phone number must not be greater than or less than 11.";
                    }
                    int firstNumber = int.parse(value.toString()[0]);
                    if (firstNumber != 0) {
                      return "phone number must begin with zero";
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text('phone'),
                    floatingLabelStyle:
                        TextStyle(color: Color.fromARGB(255, 221, 220, 220)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      gapPadding: 50.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 161, 138, 130),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 161, 138, 130),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    prefixIcon: Icon(Icons.phone_android),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passController,
                  obscureText: seePassword,
                  decoration: InputDecoration(
                      label: Text('Password'),
                      floatingLabelStyle:
                          TextStyle(color: Color.fromARGB(255, 221, 220, 220)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                        gapPadding: 50.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 161, 138, 130),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 161, 138, 130),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() => seePassword = !seePassword);
                        },
                        child: Icon(seePassword
                            ? Icons.visibility_off
                            : Icons.visibility),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formField.currentState!.validate()) {
                      emailController.clear();
                      passController.clear();
                      phoneController.clear();
                      userNameController.clear();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      }));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an Account?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 238, 236, 236),
                        fontSize: 15,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Login now',
                          style: TextStyle(
                              color: Color.fromARGB(255, 141, 73, 48),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
