import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;
  const CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //remove item from cart
  void removerItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);

    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              backgroundColor: Colors.black,
              //title: Text('Delete Item',style: TextStyle(color: Colors.white),),
              content: Text(
                'Item removed successfully',
                style: TextStyle(color: Colors.white),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          color: Colors.red[900],
          icon: Icon(Icons.delete),
          onPressed: removerItemFromCart,
        ),
      ),
    );
  }
}
