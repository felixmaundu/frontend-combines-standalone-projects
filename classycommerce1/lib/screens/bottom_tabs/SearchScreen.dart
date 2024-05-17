import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static const String id = "SearchScreen";
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Center(
            child: Text("Search Screen"),
          ),
        ],
      ),
    );
  }
}
