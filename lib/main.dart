import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';
import './providers/products_provider.dart';

void main() {
  runApp(ShopApp());
}

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        theme: ThemeData(
          accentColor: Colors.deepOrange,
          primarySwatch: Colors.purple,
          fontFamily: 'Lato',
          buttonColor: Colors.deepOrange,
        ),
        home: ProductsOverview(),
        routes: {
          //'/': (context) => ProductsOverview(),
          '/detail': (context) => ProductDetailScreen(),
        },
      ),
    );
  }
}
