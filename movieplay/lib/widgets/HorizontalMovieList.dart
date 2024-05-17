import 'package:flutter/material.dart';
import 'package:movieplay/services/apis_service/main_service.dart';
import 'package:movieplay/services/constants/api_constants.dart';
import 'package:movieplay/screens/MovieDetails.dart';
import '../modal_class/global_models/genres.dart';
import '../modal_class/movie_models/MainMovieModel.dart';

class HorizontalMovieList extends StatefulWidget {
  final ThemeData themeData;
  final String? api, title;
  final List<Genres> genres;
  const HorizontalMovieList(
      {required this.themeData, this.api, this.title, required this.genres});
  @override
  _HorizontalMovieListState createState() => _HorizontalMovieListState();
}

class _HorizontalMovieListState extends State<HorizontalMovieList> {
  List<Results>? moviesList;
  @override
  void initState() {
    super.initState();
    fetchMovies(widget.api!).then((value) {
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
              child: Text(widget.title!,
                  style: widget.themeData.textTheme.headline5),
            ),
          ],
        ),
        SizedBox(
          width: double.infinity,
          height: 350,
          child: moviesList == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: moviesList!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MovieDetails(
                                  movieResults: moviesList![index],
                                  themeData: widget.themeData,
                                  genres: widget.genres,
                                  heroId: '${moviesList![index].id}discover'),
                            ),
                          );
                        },
                        child: Hero(
                          tag: '${moviesList![index].id}${widget.title}',
                          child: SizedBox(
                            width: 200,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: FadeInImage(
                                      image: NetworkImage(
                                          '${TMDB_BASE_IMAGE_URL}original/${moviesList![index].posterPath!}'),
                                      fit: BoxFit.cover,
                                      placeholder: const AssetImage(
                                          'assets/loading.gif'),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    moviesList![index].title!,
                                    style: widget.themeData.textTheme.bodyText1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
