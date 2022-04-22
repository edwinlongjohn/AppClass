// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Mega Mall",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        //this is used to remove that arrow at the app bar
        automaticallyImplyLeading: true,
        elevation: 0.5,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 29,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Icon(Icons.notifications),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.all(20.0),
                        hintStyle:
                            Theme.of(context).textTheme.bodyText2?.copyWith(
                                  color: Color(0xffc4c5c4),
                                  fontWeight: FontWeight.bold,
                                ),
                        hintText: 'Search Product Name',
                        suffixIcon: Icon(
                          Icons.search,
                          size: 40,
                          color: Color(0xff0C1A30),
                        ),
                      ).copyWith(
                        fillColor: Color(0xfffafafa),
                        filled: true,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 230,
                width: 400,
                child: ListView(
                  //shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildSlider(context, "Get Affordable Things",
                        Theme.of(context).primaryColor),
                    buildSlider(
                        context,
                        "Shop with us from the Comfort of your Home",
                        Colors.cyan),
                    buildSlider(
                        context,
                        "We provide your groceries at one click",
                        Colors.orangeAccent),
                    buildSlider(
                        context, "We can sell without you", Colors.black26),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              
              Container(
                width: 400,
                height:300,
                child: ListView.builder(
                  itemBuilder:((context, index){
                   return Text("$index");
                  }),
                  ),
                  ),
             


              // Container(
              //   width: 400,
              //   height:400,
              //   child: GridView.builder(
              //      shrinkWrap: true,
              //      scrollDirection: Axis.horizontal,
              //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //           crossAxisCount: 2),
              //       itemBuilder: (context, index) {
              //         return Text("i am $index");
              //       }),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildSlider(BuildContext context, String title, Color color) {
    return Container(
      width: 300,
      height: 200,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
