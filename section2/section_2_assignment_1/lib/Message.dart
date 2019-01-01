import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  final List<String> messages;

  Messages([this.messages = const []]);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: messages
          .map(
            (element) => Card(
                  child: Column(
                    children: <Widget>[Text((element))],
                  ),
                ),
          )
          .toList(),
    );
  }
}
