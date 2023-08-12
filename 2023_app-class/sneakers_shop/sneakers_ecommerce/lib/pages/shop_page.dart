import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_ecommerce/components/most_popular.dart';
import 'package:sneakers_ecommerce/components/shoe_tile.dart';
import 'package:sneakers_ecommerce/models/cart.dart';
import 'package:sneakers_ecommerce/pages/all_products.dart';

import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    //alert the user, shoe successfully added
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        backgroundColor: Colors.black,
        title: Text(
          'Successfully Added',
          style: TextStyle(color: Colors.white),
        ),
        content: Text(
          'Check your cart',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[100],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),

            //message
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                'everyone flies.. some fly longer than others',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),

            //black friday
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              width: 340,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[100],
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF1E1B02),
                      Color(0xFF3C3C3C),
                    ]),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 10.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        //text1
                        const Text(
                          'BLACK FRIDAY',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        //text2
                        const Text(
                          '20% off',
                          style: TextStyle(
                            color: Color(0xFFFDB447),
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        //text3
                        const Text(
                          'all products',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 8, left: 20, right: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFFFDB447),
                          ),
                          child: const Text(
                            'Get',
                            style: TextStyle(
                              color: Colors.white,
                              //fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'lib/images/percentage.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Hot Picks 🔥',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AllProducts()));
                    },
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              height: 300,
              child: ListView.builder(
                shrinkWrap: true,
                //physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: value.getShoeList().length,
                itemBuilder: (BuildContext context, int index) {
                  Shoe shoe = value.getShoeList()[index];
                  return MyShoeTile(
                    shoe: shoe,
                    onTap: () {
                      addShoeToCart(shoe);
                    },
                  );
                },
              ),
            ),

            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most Popular',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  Shoe shoe = value.getShoeList()[index];
                  return MostPopular(
                    shoe:shoe,
                    onPressed: () {
                      addShoeToCart(shoe);
                    },
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 25.0,
                left: 25.0,
                right: 25.0,
              ),
              child: Divider(
                color: Colors.white,
              ),
            )
          ],

          //hot picks
        ),
      ),
    );
  }
}
