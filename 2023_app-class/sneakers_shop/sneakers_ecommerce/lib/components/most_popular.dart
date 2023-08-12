import 'package:flutter/material.dart';
import 'package:sneakers_ecommerce/models/shoe.dart';

class MostPopular extends StatefulWidget {
  //image header_text sub-text price and rating
  final Shoe shoe;
  void Function()? onPressed;
   MostPopular({
    super.key,
    required this.shoe,
    required this.onPressed,
  });

  @override
  State<MostPopular> createState() => _MostPopularState();
}

class _MostPopularState extends State<MostPopular> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 194, 191, 191),
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(0, 10.00),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //image
          Container(
            padding: EdgeInsets.all(10.0),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xffF0EAFF),
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xE1ECECEC),
                  blurRadius: 3,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Expanded(
              child: Image.asset(
                'lib/images/ai_nike.jpg',
                height: 200.0,
              ),
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //header text
              Text(
                'Gel Lyte III OG Wisteria',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5),
              //sub-text
              Text(
                'ASICS',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Color(0xFF999CA1),
                ),
              ),
              SizedBox(height: 5),

              //add-ons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$130.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xffFFC107),
                        size: 15,
                      ),
                      Text(
                        '5.0',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          color: Color(0xFF999CA1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

          //add to cart button.
          FloatingActionButton(
            onPressed: widget.onPressed,
            mini: true,
            backgroundColor: Colors.black,
            hoverColor: Colors.grey[400],
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
