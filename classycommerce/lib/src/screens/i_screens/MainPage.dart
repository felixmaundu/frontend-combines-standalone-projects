import 'package:classycommerce/src/services/api_service.dart';
import 'package:classycommerce/src/services/shared_service.dart';
import 'package:classycommerce/src/screens/bottom_tabs/AccountScreen.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const Text('home screen'),
    const Text('search'),
    const Text('post'),
    const Text('notification'),
    AccountScreen(),
    // HomeScreen(),
    // SearchScreen(),
    // PostScreen(),
    // MyShop(),
    // AccountPageScreen(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    // initialization();
  }

  // void initialization() async {
  // This is where you can initialize the resources needed by your app while
  // the splash screen is displayed.  Remove the following example because
  // delaying the user experience is a bad design practice!
  // ignore_for_file: avoid_print

  //   await Future.delayed(const Duration(seconds: 3));
  //   FlutterNativeSplash.remove();
  // }

  // final themeData = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pages[currentIndex]),
      // Scaffold(
      //   // appBar: AppBar(
      //   //   title: Text("data"),
      //   // ),
      //  drawer: HomeDrawer(),

      //   body: Center(child: pages[currentIndex]),
      // ),

      // drawer: HomeDrawer(),
      // backgroundColor: Theme.of(context).backgroundColor == Brightness.light
      //     ? Colors.white
      //     : Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        //selectedItemColor: isDarkMode ? Colors.grey.shade100 : Colors.black87,
        // unselectedItemColor:
        //     isDarkMode ? Colors.lightBlue.shade100 : Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        //backgroundColor: Colors.white,
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
            // icon: Icon(Icons.notifications_active_outlined),
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            // icon: Icon(Icons.shopping_bag_outlined),
            // label: 'Account',
            icon: CircleAvatar(
              //key: UniqueKey(),
              radius: 17,
              // backgroundColor: Colors.black12,
              backgroundImage: CachedNetworkImageProvider(
                'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
              ),
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
