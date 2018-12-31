import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProjectManagerState();
  }
}

class _ProjectManagerState extends State<ProductManager> {
  List<String> _products = ['Film Critic'];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed: () {
            setState(() {
              _products.add("New Film Critic");
            });
          }, // anymous function
          child: Text('Add new Image'),
        ),
      ),
      Products(_products)
    ]);
  }
}
