import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]) {
    print("[Product Wiget] Constructor");
  }

  // returns a widget
  // List Builder allows us to dynamically add and remove items for the view
  // better for performance
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
    return products.length > 0
        ? ListView.builder(
            itemBuilder: _productBuilder,
            itemCount: products.length,
          )
        : Center(
            child: Text("No products found, Please add some!"),
          );
  }
}
