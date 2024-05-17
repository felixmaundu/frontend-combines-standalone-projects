import 'package:flutter/material.dart';
import 'package:movieplay/modal_class/movie_models/MainMovieModel.dart';
import 'package:movieplay/services/api/endpoints.dart';
import 'package:movieplay/services/apis_service/main_service.dart';
import 'package:movieplay/services/constants/api_constants.dart';
import 'package:movieplay/theme/theme_state.dart';
import 'package:movieplay/widgets/GenreList.dart';
import 'package:movieplay/widgets/HorizontalMovieList.dart';
import 'package:movieplay/widgets/ScrollingArtists.dart';
import 'package:movieplay/widgets/VideoPlayer.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../modal_class/global_models/genres.dart';

class MovieDetails extends StatefulWidget {
  final Results movieResults;
  //  List<Results>? moviesList;
  final ThemeData themeData;
  final String heroId;
  final List<Genres> genres;
  // MovieDetails({Key? key}) : super(key: key);
  MovieDetails(
      {required this.movieResults,
      required this.themeData,
      required this.heroId,
      required this.genres});
  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  // final videoUrl = "https://www.youtube.con/watch?v=dIK5MNvaxeY";
  // late YoutubePlayerController _controller;
  // @override
  // void initState() {
  //   final videoID = YoutubePlayer.convertUrlToId(videoUrl);

  //   _controller = YoutubePlayerController(
  //     initialVideoId: videoID!,
  //     flags: const YoutubePlayerFlags(
  //       autoPlay: false,
  //     ),
  //   );

  //   super.initState();
  // }
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
      child: SafeArea(
        child: Scaffold(
          backgroundColor: state.themeData.primaryColor,
          // appBar: AppBar(),
          body: Column(
            children: [
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  children: <Widget>[
                    FadeInImage(
                      width: MediaQuery.of(context).size.width,
                      height: 350,
                      image: NetworkImage(
                        '${TMDB_BASE_IMAGE_URL}original/${widget.movieResults.backdropPath!}',
                      ),
                      fit: BoxFit.cover,
                      placeholder: const AssetImage('assets/loading.gif'),
                    ),
                    Text(
                      widget.movieResults.title!,
                      style: widget.themeData.textTheme.headline5,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: <Widget>[
                            widget.genres.isEmpty
                                ? Container()
                                : GenreList(
                                    themeData: widget.themeData,
                                    genres: widget.movieResults.genreIds ?? [],
                                    totalGenres: widget.genres,
                                  ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    'Overview',
                                    style: widget.themeData.textTheme.bodyText1,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                widget.movieResults.overview!,
                                style: widget.themeData.textTheme.caption,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, bottom: 4.0),
                                  child: Text(
                                    'Release date : ${widget.movieResults.releaseDate}',
                                    style: widget.themeData.textTheme.bodyText1,
                                  ),
                                ),
                              ],
                            ),
                            ScrollingArtists(
                              api: Endpoints.getCreditsUrl(
                                  widget.movieResults.id!),
                              title: 'Cast',
                              tapButtonText: 'See full cast & crew',
                              themeData: widget.themeData,
                              // onTap: (Cast cast) {
                              //   modalBottomSheetMenu(cast);
                              // },
                            ),
                            HorizontalMovieList(
                              themeData: state.themeData,
                              title: 'Related Movies',
                              api: Endpoints.getSimilarMoviesUrl(
                                  widget.movieResults.id!),
                              genres: _genres,
                            ),
                            HorizontalMovieList(
                              themeData: state.themeData,
                              title: 'Recommendation Movies',
                              api: Endpoints.getRecommendedMoviesUrl(
                                  widget.movieResults.id!),
                              genres: _genres,
                            ),
                            Text(
                              'Trailers',
                              style: widget.themeData.textTheme.bodyText1,
                            ),
                            VideoPlayer(
                              title: 'Trailers',
                              themeData: state.themeData,
                              api: Endpoints.getTraillerUrl(
                                widget.movieResults.id!,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
