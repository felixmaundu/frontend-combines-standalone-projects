import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movieplay/modal_class/global_models/TrailerModel.dart';
import 'package:movieplay/modal_class/global_models/genres.dart';
import 'package:movieplay/modal_class/movie_models/MovieAlike.dart';
import 'package:movieplay/modal_class/tv_models/TvCredits.dart';
import 'package:movieplay/services/api/endpoints.dart';

import '../../modal_class/movie_models/MainMovieModel.dart';

Future<List<Results>> fetchMovies(String api) async {
  MainMovieModel mainMovieModel;
  var res = await http.get(Uri.parse(api));
  var decodeRes = jsonDecode(res.body);
  mainMovieModel = MainMovieModel.fromJson(decodeRes);
  return mainMovieModel.results ?? [];
}

Future<TvCredits> fetchCredits(String api) async {
  TvCredits tvCredits;
  var res = await http.get(Uri.parse(api));
  var decodeRes = jsonDecode(res.body);
  tvCredits = TvCredits.fromJson(decodeRes);
  return tvCredits;
}

Future<List<ResultsV>> fetchTrailler(String api) async {
  TrailerModel trailerModel;
  var res = await http.get(Uri.parse(api));
  var decodeRes = jsonDecode(res.body);
  trailerModel = TrailerModel.fromJson(decodeRes);
  return trailerModel.resultsV ?? [];
}

Future<List<ResultsM>> fetchSimilar(String api) async {
  MovieAlike movieAlike;
  var res = await http.get(Uri.parse(api));
  var decodeRes = jsonDecode(res.body);
  movieAlike = MovieAlike.fromJson(decodeRes);
  return movieAlike.resultsM ?? [];
}

Future<GenresList> fetchGenres() async {
  GenresList genresList;
  var res = await http.get(Uri.parse(Endpoints.genresUrl()));
  var decodeRes = jsonDecode(res.body);
  genresList = GenresList.fromJson(decodeRes);
  return genresList;
}
