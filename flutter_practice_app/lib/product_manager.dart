import 'package:flutter/material.dart';

import './products.dart';

import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct}) {
    print("[ProductManager Wiget] Constructor");
  }

  @override
  State<StatefulWidget> createState() {
    print("[ProductManager Wiget] createState");
    return _ProjectManagerState();
  }
}

class _ProjectManagerState extends State<ProductManager> {
  List<String> _products = [];

  //initState will run whenever this state obj is created
  @override
  void initState() {
    super.initState();
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
    print("[ProductManagerState] initState()");
    //widget. allows you to access the parent widget properties
  }

// This will execute whenever your connected widget recieves new external data.
  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print("[ProductManagerState] didUpdate()");
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct({String newProduct = 'default new product'}) {
    setState(() {
      _products.add(newProduct);
    });
  }

  @override
  Widget build(BuildContext context) {
    print("[ProductManagerState] build()");
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: ProductControl(addProduct: _addProduct),
      ),
      Expanded(child: Products(_products))
    ]);
  }
}
