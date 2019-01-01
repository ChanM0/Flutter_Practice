import 'package:flutter/material.dart';

import './Message.dart';

class Manager extends StatefulWidget {
  final String message;

  Manager({this.message = 'Default Message'});

  @override
  State<StatefulWidget> createState() {
    return _ManagerState();
  }
}

class _ManagerState extends State<Manager> {
  List<String> _messages = [];

  @override
  void initState() {
    super.initState();
    _messages.add(widget.message);
  }

  @override
  void didUpdateWidget(Manager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          onPressed: () {
            setState(() {
              _messages.add("New Message");
            });
          },
          child: Text('add New message here'),
        ),
      ),
      Messages(_messages)
    ]);
  }
}
