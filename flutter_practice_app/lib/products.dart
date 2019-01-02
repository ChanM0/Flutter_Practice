import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct}) {
    print("[Product Wiget] Constructor");
  }

  // returns a widget
  // List Builder allows us to dynamically add and remove items for the view
  // better for performance
  Widget _productBuilder(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text((products[index]['title'])),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Detials'),
                onPressed: () => Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ProductPage(
                            products[index]['title'], products[index]['image']),
                      ),
                    ).then((bool value) {
                      if (value) {
                        deleteProduct(index: index);
                      }
                    }),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductsList() {
    Widget productCard;

    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _productBuilder,
        itemCount: products.length,
      );
    } else {
      productCard = Center(
        child: Text("No products found, Please add some!"),
      );
    }

    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    print("[Product Wiget] build()");
    return _buildProductsList();
  }
}
