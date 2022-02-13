import 'package:flutter/material.dart';

import '../screens/product_detail_screen.dart';

import '../models/product.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imgUrl;
  final double price;

  ProductItem({this.id, this.title, this.imgUrl, this.price});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GridTile(
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/detail', arguments: id),
          child: Image.network(
            imgUrl,
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
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
            ),
            color: Theme.of(context).buttonColor,
          ),
          backgroundColor: Colors.black87,
          title: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              title,
              textAlign: TextAlign.center,
            ),
            Text(
              price.toString(),
              textAlign: TextAlign.center,
            )
          ]),
        ),
      ),
    );
  }
}
