import 'package:movieplay/services/constants/api_constants.dart';

// https://api.themoviedb.org/3/movie/{movie_id}/reviews?api_key=<<api_key>>&language=en-US&page=1
// https://api.themoviedb.org/3/movie/now_playing?api_key=<<api_key>>&language=en-US&page=1
// https://api.themoviedb.org/3/movie/popular?api_key=<<api_key>>&language=en-US&page=1
// https://api.themoviedb.org/3/movie/top_rated?api_key=<<api_key>>&language=en-US&page=1
// https://api.themoviedb.org/3/movie/upcoming?api_key=<<api_key>>&language=en-US&page=1
// https://api.themoviedb.org/3/discover/movie?api_key=<<api_key>>
// &language=en-US&sort_by=popularity.desc&
// include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate
//  https://api.themoviedb.org/3/movie/{movie_id}/watch/providers?api_key=<<api_k
// https://api.themoviedb.org/3/movie/latest?api_key=<<api_key>>&language=en-US
// https://api.themoviedb.org/3/tv/{tv_id}/images?api_key=<<api_key>>&language=en-US
// https://api.themoviedb.org/3/movie/{movie_id}/images?api_key=<<api_key>>&language=en-US
// https://api.themoviedb.org/3/tv/{tv_id}/videos?api_key=<<api_key>>&language=en-US
// https://api.themoviedb.org/3/search/multi?api_key=<<api_key>>&language=en-US&page=1&include_adult=false
// https://api.themoviedb.org/3/tv/{tv_id}/reviews?api_key=<<api_key>>&language=en-US&page=1
// https://api.themoviedb.org/3/tv/{tv_id}/watch/providers?api_key=<<api_key>>
// https://api.themoviedb.org/3/movie/{movie_id}?api_key=<<api_key>>&language=en-US
// https://api.themoviedb.org/3/tv/{tv_id}/credits?api_key=<<api_key>>&language=en-US
// https://api.themoviedb.org/3/tv/{tv_id}?api_key=<<api_key>>&language=en-US
// https://api.themoviedb.org/3/tv/{tv_id}/recommendations?api_key=<<api_key>>&language=en-US&page=1
// https://api.themoviedb.org/3/tv/{tv_id}/similar?api_key=<<api_key>>&language=en-US&page=1
//   https://api.themoviedb.org/3/tv/airing_today?api_key=<<api_key>>&language=en-US&page=1
//   https://api.themoviedb.org/3/tv/on_the_air?api_key=<<api_key>>&language=en-US&page=1
//   https://api.themoviedb.org/3/tv/popular?api_key=<<api_key>>&language=en-US&page=1
//   https://api.themoviedb.org/3/tv/top_rated?api_key=<<api_key>>&language=en-US&page=1

// https://api.themoviedb.org/3/discover/tv?api_key=<<api_key>>&
// language=en-US&sort_by=popularity.desc&page=1&timezone=America%2FNew_York&include_null_first_air_dates=false&
// with_watch_monetization_types=flatrate&with_status=0&with_type=0
// https://api.themoviedb.org/3/tv/latest?api_key=<<api_key>>&language=en-US
// https://api.themoviedb.org/3/trending/all/week?api_key=<<api_key>>//day
// https://api.themoviedb.org/3/person/{person_id}?api_key=<<api_key>>&language=en-US
// https://api.themoviedb.org/3/person/{person_id}/images?api_key=<<api_key>>
// https://api.themoviedb.org/3/person/latest?api_key=<<api_key>>&language=en-US
// https://api.themoviedb.org/3/person/latest?api_key=<<api_key>>&language=en-US
//  https://api.themoviedb.org/3/person/popular?api_key=<<api_key>>&language=en-US&page=1
// https://api.themoviedb.org/3/person/{person_id}/tagged_images?api_key=<<api_key>>&language=en-US&page=1

class Endpoints {
  static String getSimilarMoviesUrl(int id) {
    return '$TMDB_API_BASE_URL/movie/$id/similar?api_key=$TMDB_API_KEY';
  }

  // https://api.themoviedb.org/3/tv/{tv_id}/videos?api_key=<<api_key>>&language=en-US
  static String getTraillerUrl(int id) {
    return '$TMDB_API_BASE_URL/movie/$id/videos?api_key=$TMDB_API_KEY';
  }

  static String getRecommendedMoviesUrl(int id) {
    return '$TMDB_API_BASE_URL/movie/$id/recommendations?api_key=$TMDB_API_KEY';
  }

  static String discoverMoviesUrl(int page) {
    return '$TMDB_API_BASE_URL'
        '/discover/movie?api_key='
        '$TMDB_API_KEY'
        '&language=en-US&sort_by=popularity'
        '.desc&include_adult=false&include_video=false&page'
        '=$page';
  }

  static String nowPlayingMoviesUrl(int page) {
    return '$TMDB_API_BASE_URL'
        '/movie/now_playing?api_key='
        '$TMDB_API_KEY'
        '&include_adult=false&page=$page';
  }

  static String getCreditsUrl(int id) {
    return '$TMDB_API_BASE_URL/movie/$id/credits?api_key=$TMDB_API_KEY';
  }

  static String topRatedUrl(int page) {
    return '$TMDB_API_BASE_URL'
        '/movie/top_rated?api_key='
        '$TMDB_API_KEY'
        '&include_adult=false&page=$page';
  }

  static String popularMoviesUrl(int page) {
    return '$TMDB_API_BASE_URL'
        '/movie/popular?api_key='
        '$TMDB_API_KEY'
        '&include_adult=false&page=$page';
  }

  static String upcomingMoviesUrl(int page) {
    return '$TMDB_API_BASE_URL'
        '/movie/upcoming?api_key='
        '$TMDB_API_KEY'
        '&include_adult=false&page=$page';
  }

  static String movieDetailsUrl(int movieId) {
    return '$TMDB_API_BASE_URL/movie/$movieId?api_key=$TMDB_API_KEY&append_to_response=credits,'
        'images';
  }

  static String genresUrl() {
    return '$TMDB_API_BASE_URL/genre/movie/list?api_key=$TMDB_API_KEY&language=en-US';
  }

  static String getMoviesForGenre(int genreId, int page) {
    return '$TMDB_API_BASE_URL/discover/movie?api_key=$TMDB_API_KEY'
        '&language=en-US'
        '&sort_by=popularity.desc'
        '&include_adult=false'
        '&include_video=false'
        '&page=$page'
        '&with_genres=$genreId';
  }

  static String movieReviewsUrl(int movieId, int page) {
    return '$TMDB_API_BASE_URL/movie/$movieId/reviews?api_key=$TMDB_API_KEY'
        '&language=en-US&page=$page';
  }

  static String movieSearchUrl(String query) {
    return "$TMDB_API_BASE_URL/search/movie?query=$query&api_key=$TMDB_API_KEY";
  }

  static String personSearchUrl(String query) {
    return "$TMDB_API_BASE_URL/search/person?query=$query&api_key=$TMDB_API_KEY";
  }

  static getPerson(int personId) {
    return "$TMDB_API_BASE_URL/person/$personId?api_key=$TMDB_API_KEY&append_to_response=movie_credits";
  }
}
