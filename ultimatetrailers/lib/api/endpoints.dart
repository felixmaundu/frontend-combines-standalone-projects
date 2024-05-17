import 'package:ultimatetrailers/constants/api_constants.dart';

class Endpoints {
  // https://api.themoviedb.org/3/tv/airing_today?api_key=<<api_key>>&language=en-US&page=1
//https://api.themoviedb.org/3/tv/{tv_id}/credits?api_key=<<api_key>>&language=en-US
// https://api.themoviedb.org/3/tv/{tv_id}/videos?api_key=<<api_key>>&language=en-US
// https://api.themoviedb.org/3/tv/{tv_id}/similar?api_key=<<api_key>>&language=en-US&page=1
// https://api.themoviedb.org/3/tv/{tv_id}/similar?api_key=<<api_key>>&language=en-US&page=1
  static String airingToday(int page) {
    // /tv/airing_today?api_key=<<api_key>>&language=en-US&page=1
    return '$TMDB_API_BASE_URL'
        '/tv/airing_today?api_key='
        '$TMDB_API_KEY'
        '&language=en-US&page=$page';
  }

  static String getCreditsUrl(int id) {
    return '$TMDB_API_BASE_URL' + '/movie/$id/credits?api_key=$TMDB_API_KEY';
  }

  static String getsimilarTv(
    int id,
  ) {
    //int page
    return '$TMDB_API_BASE_URL'
        '/tv/${id}/similar?api_key='
        '$TMDB_API_KEY'
        '&language=en-US&page=1'; //$page
  }

  static String videos(int id) {
    return '$TMDB_API_BASE_URL'
        '/tv/${id}/similar?api_key='
        '$TMDB_API_KEY'
        '&language=en-US';
  }
}
