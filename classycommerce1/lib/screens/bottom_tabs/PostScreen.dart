import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  static const String id = "PostScreen";
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Center(
            child: Text("post screen"),
          ),
        ],
      ),
    );
  }
}
