import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]) {
    print("[Product Wiget] Constructor");
  }

  // returns a widget
  Widget _productBuilder(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/film_cart.jpeg'),
          Text((products[index])),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print("[Product Wiget] build()");
    return ListView.builder(
      itemBuilder: _productBuilder,
      itemCount: products.length,
    );
  }
}
