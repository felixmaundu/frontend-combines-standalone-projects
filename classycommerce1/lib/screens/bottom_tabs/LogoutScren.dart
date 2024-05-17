import 'package:classycommerce1/screens/xscreens/LoginSection.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogoutScreen extends StatelessWidget {
  static const String id = "LogoutScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Text("Logout")),
          TextButton.icon(
            onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.remove('token');
              Navigator.pushNamed(context, LoginSection.id);
            },
            icon: Icon(Icons.send),
            label: Text("Logout"),
          )
        ],
      ),
      // bottomNavigationBar: BottomNav(),
    );
  }
}
