import 'package:flutter/material.dart';
import 'package:movieplay/theme/theme_state.dart';
import 'package:provider/provider.dart';

class CategoriesPage extends StatefulWidget {
  final ThemeData? themeData;
  CategoriesPage({this.themeData});
  // CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ThemeState>(context);
    return Theme(
      data: state.themeData,
      child: Container(
        color: state.themeData.primaryColor,
      ),
    );
  }
}
