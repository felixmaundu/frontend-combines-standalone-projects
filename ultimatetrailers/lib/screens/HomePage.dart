import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ultimatetrailers/api/endpoints.dart';
import 'package:ultimatetrailers/utils/theme_state.dart';
import 'package:ultimatetrailers/widgets/scrollingTv.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ThemeState>(context);
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            ScrollingTv(
              api: Endpoints.airingToday(1),
              themeData: state.themeData,
            )
          ],
        ),
      ),
    );
  }
}
