import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  static const String id = "NotificationScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Center(
            child: Text("Notification Screen"),
          ),
        ],
      ),
    );
  }
}
