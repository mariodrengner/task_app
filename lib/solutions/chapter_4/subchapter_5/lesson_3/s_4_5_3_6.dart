import 'package:flutter/material.dart';

class S4536 extends StatelessWidget {
  const S4536({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> productList = [
      Product('Product 1', 10.99),
      Product('Product 2', 19.99),
      Product('Product 3', 29.99),
      Product('Product 4', 39.99),
      Product('Product 5', 49.99),
      Product('Product 6', 59.99),
    ];

    return ListView(
      shrinkWrap: true,
      children: productList.map((product) => ListTile(
        leading: Icon(Icons.shopping_cart),
        title: Text(product.name),
        subtitle: Text(product.price.toString()),
      )).toList(),
    );
  }
}

class Product {
  final String name;
  final double price;

  const Product(this.name, this.price);
}
