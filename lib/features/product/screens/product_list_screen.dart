// ignore_for_file: prefer_const_constructors, library_private_types_in_public_ap
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_managment/features/cart/screens/cart_screen.dart';
import 'package:flutter_state_managment/features/product/widgets/product_tile.dart';
import 'package:provider/provider.dart';
import '../../../notifier/product_notifier.dart';

class ProductListScreen extends ConsumerWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  builder: (_) => CartScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: ref.watch(productNotifier).length,
        itemBuilder: (context, index) {
          final product = ref.watch(productNotifier)[index];
          return ProductTile(
            product: product,
            onChanged: (value) {
              ref.read(productNotifier.notifier).toggleSelectionProduct(product);
            },
          );
        },
      ),
    );
  }
}
