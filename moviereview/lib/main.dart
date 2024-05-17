import 'package:flutter/material.dart';
import 'package:moviereview/api/endpoints.dart';
import 'package:moviereview/modal_class/function.dart';
import 'package:moviereview/modal_class/genres.dart';
import 'package:moviereview/modal_class/movie.dart';
import 'package:moviereview/screens/movie_detail.dart';
import 'package:moviereview/screens/search_view.dart';
import 'package:moviereview/screens/settings.dart';
import 'package:moviereview/screens/widgets.dart';
import 'package:moviereview/theme/theme_state.dart';
import 'package:moviereview/widgets/DiscoverMovies.dart';
import 'package:moviereview/widgets/ScrollingMovies.dart';
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
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List<Genres> _genres = [];
  @override
  void initState() {
    super.initState();
    fetchGenres().then((value) {
      _genres = value.genres ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ThemeState>(context);

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: state.themeData.accentColor,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        centerTitle: true,
        title: Text(
          'Movie review',
          style: state.themeData.textTheme.headline5,
        ),
        backgroundColor: state.themeData.primaryColor,
        actions: <Widget>[
          IconButton(
            color: state.themeData.accentColor,
            icon: Icon(Icons.search),
            onPressed: () async {
              final Movie? result = await showSearch<Movie?>(
                  context: context,
                  delegate:
                      MovieSearch(themeData: state.themeData, genres: _genres));
              if (result != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MovieDetailPage(
                      movie: result,
                      themeData: state.themeData,
                      genres: _genres,
                      heroId: '${result.id}search',
                    ),
                  ),
                );
              }
            },
          )
        ],
      ),
      drawer: Drawer(
        child: SettingsPage(),
      ),
      body: Container(
        color: state.themeData.primaryColor,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            DiscoverMovies(
              themeData: state.themeData,
              genres: _genres,
            ),
            ScrollingMovies(
              themeData: state.themeData,
              title: 'Top Rated',
              api: Endpoints.topRatedUrl(1),
              genres: _genres,
            ),
            ScrollingMovies(
              themeData: state.themeData,
              title: 'Now Playing',
              api: Endpoints.nowPlayingMoviesUrl(1),
              genres: _genres,
            ),
            // ScrollingMovies(
            //   themeData: state.themeData,
            //   title: 'Upcoming Movies',
            //   api: Endpoints.upcomingMoviesUrl(1),
            //   genres: _genres,
            // ),
            ScrollingMovies(
              themeData: state.themeData,
              title: 'Popular',
              api: Endpoints.popularMoviesUrl(1),
              genres: _genres,
            ),
          ],
        ),
      ),
    );
  }
}
