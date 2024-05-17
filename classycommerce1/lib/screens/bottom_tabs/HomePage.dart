import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String id = "HomePage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Center(
            child: Text("Home page"),
          ),
        ],
      ),
    );
  }
}
