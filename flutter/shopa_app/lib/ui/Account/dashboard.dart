// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shopa_app/models/product_response.dart';

class Dashboard extends StatefulWidget {
  Dashboard({
    Key? key,
  }) : super(key: key);

  List<Map<String, dynamic>> products = [
    {
      'title': 'Freepods',
      'image': 'assets/images/p1.png',
      'price': 20000,
      'reviews': {'star': 5.0, 'count': 10}
    },
    {
      'title': 'Screwdriver',
      'image': 'assets/images/p2.png',
      'price': 30000,
      'reviews': {'star': 5.0, 'count': 20}
    },
    {
      'title': 'Beats by Dre',
      'image': 'assets/images/p3.png',
      'price': 80000,
      'reviews': {'star': 5.0, 'count': 50}
    },
  ];

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Future<List<ProductsResponse>> getProducts() async {
    List<ProductsResponse> allProducts;
    print('loading');
    var url = Uri.parse('https://fakestoreapi.com/products');
    var response = await http.get(url);
    List result = jsonDecode(response.body);
    allProducts =
        (result).map((dynamic e) => ProductsResponse.fromJson(e)).toList();
    print(allProducts[0].title);
    return allProducts;
  }

  @override
  void initState() {
    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: 30),
            Container(
              height: 170,
              width: 400,
              color: Colors.transparent,
              child: ListView(
                //shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  buildSlider(
                    context,
                    "assets/images/background_img.png",
                  ),
                  buildSlider(
                    context,
                    "assets/images/background_img.png",
                  ),
                  buildSlider(
                    context,
                    "assets/images/background_img.png",
                  ),
                  buildSlider(
                    context,
                    "assets/images/background_img.png",
                  ),
                ],
              ),
            ),

            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Categories",
                        style: TextStyle(color: Color(0xff0C1A30)),
                      ),
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3669C9)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),

            SizedBox(
              width: 600,
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Cat_method(context, "Foods", 'assets/images/carrot.png',
                      Color(0xffE4F3EA)),
                  Cat_method(context, "Gifts", 'assets/images/watermelon.png',
                      Color(0xffFFECE8)),
                  Cat_method(context, "Fashion", 'assets/images/basket.png',
                      Color(0xffFFF6E4)),
                  Cat_method(context, "Gadgets", 'assets/images/cake.png',
                      Color(0xffF1EDFC)),
                  Cat_method(context, "Computers",
                      'assets/images/mango_green.png', Color(0xffE4F3EA)),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                    child: Text(
                      "Featured Product",
                      style: TextStyle(color: Color(0xff0C1A30)),
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3669C9)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              width: 400,
              height: 270,
              child: FutureBuilder(
                  future: getProducts(),
                  //the snapshot takes datas like
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    } else if (snapshot.connectionState ==
                            ConnectionState.done &&
                        snapshot.hasError) {
                      Text('an error occured');
                    }
                    List<ProductsResponse> allProducts = snapshot.data;
                   
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: allProducts.length,
                      itemBuilder: ((context, i) {
                        final product = allProducts[i];
                        return SizedBox(
                          width: 180,
                          child: ProductWidget(product: product),
                        );
                      }),
                    );
                  }),
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
            SizedBox(
              height: 30,
            ),
            Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xff0ACF83)),
              child: Row(
                children: [
                  Container(
                    width: 200,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "C02  -  Cable Multifunction",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Shop Now",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                    fontWeight: FontWeight.w100,
                                    color: Color.fromARGB(255, 223, 223, 223),
                                  ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset("assets/images/p3.png"),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                    child: Text(
                      "Best Sellers",
                      style: TextStyle(color: Color(0xff0C1A30)),
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3669C9)),
                  ),
                ],
              ),
            ),
            Container(
              width: 400,
              height: 270,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.products.length,
                itemBuilder: ((context, index) {
                  return SizedBox(
                    width: 180,
                    child: Card(
                      margin: EdgeInsets.all(10),
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child:
                                  Image.asset(widget.products[index]['image']),
                            ),
                            Text(
                              widget.products[index]['title'],
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "NGN ${widget.products[index]['price']}",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                    color: Colors.red,
                                  ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    size: 13, color: Colors.yellow[800]),
                                Expanded(
                                  child: Text(
                                    '${widget.products[index]['reviews']['star']}',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    "${widget.products[index]['reviews']['count']} Reviews",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                Icon(
                                  Icons.more_vert,
                                  size: 15,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xff3669C9)),
              child: Row(
                children: [
                  Container(
                    width: 200,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Modular Headphone",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Shop Now",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                    fontWeight: FontWeight.w100,
                                    color: Color.fromARGB(255, 223, 223, 223),
                                  ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset("assets/images/p1.png"),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text(
                'Latest News',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Card(
                    child: ListTile(
                      title: Container(
                        margin: EdgeInsets.only(
                          bottom: 20,
                        ),
                        child: Text(
                          "App Development is Interesting",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                            child: Text(
                                'App ui is not difficult expecially when you follow who know road'),
                          ),
                          Text("13 Jan 2021"),
                        ],
                      ),
                      trailing:
                          Image.asset("assets/images/house.png", width: 50),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  SizedBox buildSlider(BuildContext context, String image) {
    return SizedBox(
      height: 10,
      child: Card(
        margin: EdgeInsets.all(5),
        elevation: 5,
        color: Colors.transparent,
        child: Column(
          children: [
            Center(
              child: Image.asset(image),
            ),
          ],
        ),
      ),
    );
  }

  Container Cat_method(
      BuildContext context, String text, String imgPath, Color color) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(child: Image.asset(imgPath)),
              ),
              SizedBox(height: 10),
              Text(
                text,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductsResponse product;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
              child: Center(
                child: Image.network(product.image ?? ''),
              ),
            ),
            Text(
              '${product.title}',
              maxLines: 2,
              style:
                  Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 10),
            Text(
              "NGN ${product.price}",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(
                    color: Colors.red,
                  ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(Icons.star,
                    size: 13, color: Colors.yellow[800]),
                Expanded(
                  child: Text(
                    '${product.rating}',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                // Expanded(
                //   flex: 3,
                //   child: Text(
                //     "${product.rating?.count}",
                //     style: TextStyle(fontSize: 14),
                //   ),
                // ),
                Icon(
                  Icons.more_vert,
                  size: 15,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
