import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  // add final because stateless widgets are immutable
  final Function addProduct;

  ProductControl({this.addProduct});

  @override
  Widget build(BuildContext context) {
    print("[ProductControl] build()");
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        print("[ProductControl] onPressed()");
        addProduct(newProduct: {
          'title': 'Choclate',
          'image': 'assets/film_cart.jpeg'
        });
      }, // anymous function
      child: Text('Add new Image'),
    );
  }
}
