import 'package:classycommerce1/screens/xscreens/LoginSection.dart';
import 'package:classycommerce1/screens/xscreens/landingScreen.dart';
import 'package:classycommerce1/services/service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpSection extends StatelessWidget {
  static const String id = "SignUpSection";
  var email;
  var password;

  @override
  Widget build(BuildContext context) {
    checkToken() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString("token");
      if (token != null) {
        Navigator.pushNamed(context, LandingScreen.id);
      }
    }

    checkToken();
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          automaticallyImplyLeading: false,
        ),
        child: SafeArea(
            child: ListView(padding: const EdgeInsets.all(16), children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CupertinoTextField(
                  placeholder: "Email",
                  onChanged: (value) {
                    email = value;
                  })),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CupertinoTextField(
                  placeholder: "Password",
                  obscureText: true,
                  onChanged: (value) {
                    password = value;
                  })),
          TextButton.icon(
            onPressed: () async {
              await signup(email, password);
              SharedPreferences prefs = await SharedPreferences.getInstance();
              String? token = prefs.getString("token");
              if (token != null) {
                Navigator.pushNamed(context, LandingScreen.id);
              }
            },
            icon: Icon(Icons.save),
            label: Text("Sign UP"),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginSection.id);
              },
              child: Text("login")),
        ])));
  }
}
