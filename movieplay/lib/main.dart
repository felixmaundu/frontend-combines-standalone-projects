import 'package:flutter/material.dart';
import 'package:movieplay/screens/MainPage.dart';
import 'package:movieplay/theme/theme_state.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeState>(
      create: (_) => ThemeState(),
      child: MaterialApp(
        title: 'Movie review',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          canvasColor: Colors.transparent,
        ),
        home: MainPage(),
      ),
    );
  }
}
