import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ultimatetrailers/screens/HomePage.dart';
import 'package:ultimatetrailers/utils/theme_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
        // MaterialApp(
        //   title: 'Flutter Demo',
        //   theme: ThemeData(
        //     primarySwatch: Colors.blue,
        //   ),
        //   home: HomePage(),
        // );

        ChangeNotifierProvider<ThemeState>(
      create: (_) => ThemeState(),
      child: MaterialApp(
        title: 'ultimate trailers',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          canvasColor: Colors.transparent,
        ),
        home: HomePage(),
      ),
    );
  }
}
