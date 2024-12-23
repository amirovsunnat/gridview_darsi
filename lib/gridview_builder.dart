import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gridview_darsi/data/products_data.dart';
import 'package:gridview_darsi/models/product_model.dart';
import 'package:gridview_darsi/widgets/card_widget.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          // crossAxisCount: 2,
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          log("Item count: ${products.length}");
          Product product = products[index];
          return ProductCard(product: product);
        },
      ),
    );
  }
}
