import 'package:classycommerce1/screens/bottom_tabs/AccountScreen.dart';
import 'package:classycommerce1/screens/bottom_tabs/HomePage.dart';
import 'package:classycommerce1/screens/bottom_tabs/LogoutScren.dart';
import 'package:classycommerce1/screens/bottom_tabs/NotificationScreen.dart';
import 'package:classycommerce1/screens/bottom_tabs/PostScreen.dart';
import 'package:classycommerce1/screens/bottom_tabs/SearchScreen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  static const String id = "LandingScreen";

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  List pages = [
    HomePage(),
    SearchScreen(),
    PostScreen(),
    NotificationScreen(),
    AccountScreen(),
    // LogoutScreen(),
  ];
  // int currentIndex = 0;
  // void onTap(int index) {
  //   setState(() {
  //     currentIndex = index;
  //   });
  // }

  @override
  void initState() {
    super.initState();
    // initialization();
  }

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // if (index == 0) {
      //   Navigator.pushNamed(context, HomePage.id);
      // }
      // if (index == 1) {
      //   Navigator.pushNamed(context, PostScreen.id);
      //   // Navigator.pushNamed(context, Private.id);
      // }
      // if (index == 2) {
      //   Navigator.pushNamed(context, LogoutScreen.id);
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Post',
          ),
        ],
      ),
    );
  }
}
