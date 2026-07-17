// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_managment/features/product/screens/product_list_screen.dart';
import 'package:provider/provider.dart';
import 'features/product/models/product.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));

  final product = Product(
    name: 'Coffee Maker',
    description: 'Brew barista-quality coffee in the comfort of your home.',
    price: 150.0,
    color: Colors.brown,
  );
  final product_new = product.copyWith(price: 250.0);
  print(product_new.price);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProductListScreen(),
    );
  }
}
