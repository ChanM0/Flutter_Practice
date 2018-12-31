import 'package:flutter/material.dart';

//void doesnt return anything
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

/// adding the _ClassName makes the class private essentially
/// cant import the class to another file
/// State<MyApp>
class _MyAppState extends State<MyApp> {
// _products because this property is only used in this class
  List<String> _products = ['Film Critic'];
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
              Column(
                  children: _products
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
                      .toList()),
            ],
          )),
    );
  }
}
