import 'package:flutter/material.dart';
import 'package:movieplay/services/api/endpoints.dart';
import 'package:movieplay/services/apis_service/main_service.dart';
import 'package:movieplay/theme/theme_state.dart';
import 'package:movieplay/widgets/DiscoverMovies.dart';
import 'package:movieplay/widgets/HorizontalMovieList.dart';
import 'package:provider/provider.dart';

import '../modal_class/global_models/genres.dart';

class MoviesPage extends StatefulWidget {
  final ThemeData? themeData;
  const MoviesPage({super.key, this.themeData});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
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
    return Theme(
      data: state.themeData,
      child: Scaffold(
        backgroundColor: state.themeData.primaryColor,
        appBar: AppBar(
          backgroundColor: state.themeData.primaryColor,
          title: const Text(
            'Discover',
          ),
        ),
        body: Container(
          color: state.themeData.primaryColor,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: <Widget>[
              DiscoverMovies(
                themeData: state.themeData,
                genres: _genres,
              ),
              HorizontalMovieList(
                themeData: state.themeData,
                title: 'Top Rated',
                api: Endpoints.topRatedUrl(1),
                genres: _genres,
              ),
              HorizontalMovieList(
                themeData: state.themeData,
                title: 'Upcoming',
                api: Endpoints.upcomingMoviesUrl(1),
                genres: _genres,
              ),
              HorizontalMovieList(
                themeData: state.themeData,
                title: 'Now playing',
                api: Endpoints.nowPlayingMoviesUrl(1),
                genres: _genres,
              ),
              HorizontalMovieList(
                themeData: state.themeData,
                title: 'Popular',
                api: Endpoints.popularMoviesUrl(1),
                genres: _genres,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
