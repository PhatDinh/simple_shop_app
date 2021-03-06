import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/products_provider.dart';
import '../models/product.dart';
import './product_item.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.items;

    return GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) => ChangeNotifierProvider(
              create: (c) => products[i],
              child: ProductItem(),
            ));
  }
}
