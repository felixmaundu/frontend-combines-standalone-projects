import 'package:flutter/material.dart';
import 'package:movieplay/theme/theme_state.dart';
import 'package:provider/provider.dart';

class TvSeriesPage extends StatefulWidget {
  final ThemeData? themeData;
  TvSeriesPage({this.themeData});
  // TvSeriesPage({Key? key}) : super(key: key);

  @override
  State<TvSeriesPage> createState() => _TvSeriesPageState();
}

class _TvSeriesPageState extends State<TvSeriesPage> {
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
