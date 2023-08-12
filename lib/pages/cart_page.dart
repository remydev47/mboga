import 'package:flutter/material.dart';
import 'package:mboga/models/cart_models.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Cart")),
      // backgroundColor: Colors.amberAccent,
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: value.cartItems.length,
                  padding: EdgeInsets.all(12),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                      child: ListTile(
                        title: Text(value.cartItems[index][0]),
                      ),
                    );
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
