import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:moviereview/api/endpoints.dart';
import 'package:moviereview/constants/api_constants.dart';
import 'package:moviereview/modal_class/function.dart';
import 'package:moviereview/modal_class/genres.dart';
import 'package:moviereview/modal_class/movie.dart';
import 'package:moviereview/screens/movie_detail.dart';

class DiscoverMovies extends StatefulWidget {
  final ThemeData themeData;
  final List<Genres> genres;
  DiscoverMovies({required this.themeData, required this.genres});
  @override
  _DiscoverMoviesState createState() => _DiscoverMoviesState();
}

class _DiscoverMoviesState extends State<DiscoverMovies> {
  List<Movie>? moviesList;
  @override
  void initState() {
    super.initState();
    fetchMovies(Endpoints.discoverMoviesUrl(1)).then((value) {
      setState(() {
        moviesList = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text('Discover', style: widget.themeData.textTheme.headline5),
            ),
          ],
        ),
        SizedBox(
          width: double.infinity,
          height: 350,
          child: moviesList == null
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : CarouselSlider.builder(
                  options: CarouselOptions(
                    disableCenter: true,
                    viewportFraction: 0.8,
                    enlargeCenterPage: true,
                  ),
                  itemBuilder:
                      (BuildContext context, int index, pageViewIndex) {
                    return Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MovieDetailPage(
                                      movie: moviesList![index],
                                      themeData: widget.themeData,
                                      genres: widget.genres,
                                      heroId:
                                          '${moviesList![index].id}discover')));
                        },
                        child: Hero(
                          tag: '${moviesList![index].id}discover',
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: FadeInImage(
                              image: NetworkImage(TMDB_BASE_IMAGE_URL +
                                  'w500/' +
                                  moviesList![index].posterPath!),
                              fit: BoxFit.cover,
                              placeholder:
                                  AssetImage('assets/images/loading.gif'),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: moviesList!.length,
                ),
        ),
      ],
    );
  }
}
