import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = "Default name!"}) {
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
    print("[ProductManagerState] initState()");
    //widget. allows you to access the parent widget properties
    _products.add(widget.startingProduct);
  }

// This will execute whenever your connected widget recieves new external data.
  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print("[ProductManagerState] didUpdate()");
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("[ProductManagerState] build()");
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
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
