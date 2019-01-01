import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]) {
    print("[Product Wiget] Constructor");
  }

  @override
  Widget build(BuildContext context) {
    print("[Product Wiget] build()");
    return Column(
        children: products
            .map(
              (element) => Card(
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/film_cart.jpeg'),
                        Text((element)),
                      ],
                    ),
                  ),
            )
            .toList());
  }
}
