import 'package:flutter/material.dart';
import 'package:movieplay/screens/CategoriesPage.dart';
import 'package:movieplay/screens/MoviesPage.dart';
import 'package:movieplay/screens/SettingsPage.dart';
import 'package:movieplay/screens/TvSeriesPage.dart';
import 'package:movieplay/theme/theme_state.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  final ThemeData? themeData;
  MainPage({this.themeData});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    MoviesPage(),
    TvSeriesPage(),
    CategoriesPage(),
    SettingsPage(),
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
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ThemeState>(context);
    return Theme(
      data: state.themeData,
      child: Scaffold(
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          // color: state.themeData.primaryColor,
          unselectedFontSize: 0,
          selectedFontSize: 0,
          backgroundColor: state.themeData.primaryColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: 'Movies',
              icon: Icon(Icons.movie),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tv),
              label: 'Series',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_sharp),
              label: 'Categoris',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
