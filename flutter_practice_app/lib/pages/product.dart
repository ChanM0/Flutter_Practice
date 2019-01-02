import 'dart:async';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imgUrl;

  ProductPage(this.title, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('Back button pressed');
        Navigator.pop(context, false);
        // return false because you want to go back
        // with Navigator.pop because it will send you back with the og context.

        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title + ' : Product Detail'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imgUrl),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(title),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                child: Text("DELETE!"),
                onPressed: () => Navigator.pop(context, true),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
