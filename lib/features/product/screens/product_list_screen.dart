// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_state_managment/features/cart/screens/cart_screen.dart';
import 'package:flutter_state_managment/features/product/widgets/product_tile.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                      CartScreen(
                        cartItems: Provider()
                      ),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          final product = productList[index];
          return ProductTile(
            product: product,
            onChanged: (value) {

            },
          );
        },
      ),
    );
  }
}
