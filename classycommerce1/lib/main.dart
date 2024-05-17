import 'package:classycommerce1/screens/bottom_tabs/AccountScreen.dart';
import 'package:classycommerce1/screens/bottom_tabs/HomePage.dart';
import 'package:classycommerce1/screens/bottom_tabs/LogoutScren.dart';
import 'package:classycommerce1/screens/bottom_tabs/MessagesScreen.dart';
import 'package:classycommerce1/screens/bottom_tabs/NotificationScreen.dart';
import 'package:classycommerce1/screens/bottom_tabs/PostScreen.dart';
import 'package:classycommerce1/screens/bottom_tabs/SearchScreen.dart';
import 'package:classycommerce1/screens/pages/Private.dart';
import 'package:classycommerce1/screens/xscreens/LoginSection.dart';
import 'package:classycommerce1/screens/xscreens/SingUpSection.dart';
import 'package:classycommerce1/screens/xscreens/landingScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingScreen(),
      routes: {
        SignUpSection.id: (context) => SignUpSection(),
        LandingScreen.id: (context) => LandingScreen(),
        LoginSection.id: (context) => LoginSection(),
        LogoutScreen.id: (context) => LogoutScreen(),
        Private.id: (context) => Private(),
        HomePage.id: (context) => HomePage(),
        PostScreen.id: (context) => PostScreen(),
        NotificationScreen.id: (context) => NotificationScreen(),
        SearchScreen.id: (context) => SearchScreen(),
        AccountScreen.id: (context) => AccountScreen(),
        MessagesScreen.id: (context) => MessagesScreen()
      },
    );
  }
}
