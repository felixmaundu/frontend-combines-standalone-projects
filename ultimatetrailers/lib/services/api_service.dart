import 'dart:convert';

import 'package:ultimatetrailers/modal_class.dart/SimilarTv.dart';
import 'package:ultimatetrailers/modal_class.dart/credits.dart';
import 'package:ultimatetrailers/modal_class.dart/tv.dart';
import 'package:http/http.dart' as http;
import 'package:ultimatetrailers/modal_class.dart/videos.dart';

Future<List<TvResults>> fetchTv(String api) async {
  TvList tvList;
  var res = await http.get(Uri.parse(api));
  var decodeRes = jsonDecode(res.body);
  tvList = TvList.fromJson(decodeRes);
  // print(tvList.tvresults?.length);
  return tvList.tvresults ?? [];
}

Future<List<SimilarResults>> fetchSimilarTv(String api) async {
  SimilarTv similartv;
  var res = await http.get(Uri.parse(api));
  var decodeRes = jsonDecode(res.body);
  similartv = SimilarTv.fromJson(decodeRes);
  print(similartv.similarresults?.length);
  return similartv.similarresults ?? [];
}

Future<Credits> fetchCredits(String api) async {
  Credits credits;
  var res = await http.get(Uri.parse(api));
  var decodeRes = jsonDecode(res.body);
  credits = Credits.fromJson(decodeRes);
  return credits;
}

Future<List<VideosResults>> fetchVideos(String api) async {
  Videos videos;
  var res = await http.get(Uri.parse(api));
  var decodeRes = jsonDecode(res.body);
  videos = Videos.fromJson(decodeRes);
  return videos.videosresults ?? [];
}
