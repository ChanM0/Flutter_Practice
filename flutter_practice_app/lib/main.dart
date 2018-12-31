import 'package:flutter/material.dart';

//void doesnt return anything
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Strickly typing
  // Overrides because there is a build method within StatelessWidget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ), //AppBar
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {}, // anymous function
                  child: Text('Add new Image'),
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/film_cart.jpeg'),
                    Text('I miss film :('),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
