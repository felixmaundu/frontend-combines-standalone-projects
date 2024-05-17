import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  static const String id = "AccountScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Center(
            child: Text("Account Screen"),
          ),
        ],
      ),
    );
  }
}
