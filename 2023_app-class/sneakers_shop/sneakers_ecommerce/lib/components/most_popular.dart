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
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.all(15.0),
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
            padding: const EdgeInsets.all(10.0),
            constraints: const BoxConstraints.expand(
              height: 80.0,
              width: 80.0,
            ),
            decoration: BoxDecoration(
              color: Color(widget.shoe.color),
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xE1ECECEC),
                  blurRadius: 3,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                widget.shoe.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //header text
              Text(
                widget.shoe.name,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              //sub-text
              Text(
                widget.shoe.description,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Color(0xFF999CA1),
                ),
              ),
              const SizedBox(height: 5),

              //add-ons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.shoe.price,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xffFFC107),
                        size: 15,
                      ),
                      Text(
                        widget.shoe.rating,
                        style: const TextStyle(
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
