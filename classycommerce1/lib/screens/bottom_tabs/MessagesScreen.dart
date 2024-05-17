import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  static const String id = "MessagesScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Center(
            child: Text("Messages Screen"),
          ),
        ],
      ),
    );
  }
}
