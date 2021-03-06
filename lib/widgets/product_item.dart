import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../screens/product_detail_screen.dart';

import '../models/product.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GridTile(
        child: GestureDetector(
          onTap: () =>
              Navigator.pushNamed(context, '/detail', arguments: product.id),
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            color: Theme.of(context).buttonColor,
          ),
          leading: IconButton(
            onPressed: () {
              product.toggleFavorite();
            },
            icon: Icon(
              product.isFavorite ? Icons.favorite : Icons.favorite_border,
            ),
            color: Theme.of(context).buttonColor,
          ),
          backgroundColor: Colors.black87,
          title: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              product.title,
              textAlign: TextAlign.center,
            ),
            Text(
              product.price.toString(),
              textAlign: TextAlign.center,
            )
          ]),
        ),
      ),
    );
  }
}
