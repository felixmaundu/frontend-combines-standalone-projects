class TvList {
  int? page;
  List<TvResults>? tvresults;
  int? totalResults;
  int? totalPages;

  TvList({this.page, this.tvresults, this.totalResults, this.totalPages});

  TvList.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    // if (json['results'] != null) {
    //   tvresults = <TvResults>[];
    //   json['results'].forEach(
    //     (v) {
    //       tvresults!.add(new TvResults.fromJson(v));
    //     },
    //   );
    // }
    if (json['results'] != null) {
      tvresults = [];
      json['results'].forEach((v) {
        tvresults!.add(new TvResults.fromJson(v));
      });
    }
    totalResults = json['total_results'];
    totalPages = json['total_pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    if (this.tvresults != null) {
      data['results'] = this.tvresults!.map((v) => v.toJson()).toList();
    }
    data['total_results'] = this.totalResults;
    data['total_pages'] = this.totalPages;
    return data;
  }
}

class TvResults {
  String? posterPath;
  double? popularity;
  int? id;
  String? backdropPath;
  // int? voteAverage;
  String? overview;
  String? firstAirDate;
  List<String>? originCountry;
  List<int>? genreIds;
  String? originalLanguage;
  int? voteCount;
  String? name;
  String? originalName;

  TvResults(
      {this.posterPath,
      this.popularity,
      this.id,
      this.backdropPath,
      // this.voteAverage,
      this.overview,
      this.firstAirDate,
      this.originCountry,
      this.genreIds,
      this.originalLanguage,
      this.voteCount,
      this.name,
      this.originalName});

  TvResults.fromJson(Map<String, dynamic> json) {
    posterPath = json['poster_path'];
    popularity = json['popularity'];
    id = json['id'];
    backdropPath = json['backdrop_path'];
    // voteAverage = json['vote_average'];
    overview = json['overview'];
    firstAirDate = json['first_air_date'];
    originCountry = json['origin_country'].cast<String>();
    genreIds = json['genre_ids'].cast<int>();
    originalLanguage = json['original_language'];
    voteCount = json['vote_count'];
    name = json['name'];
    originalName = json['original_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['poster_path'] = this.posterPath;
    data['popularity'] = this.popularity;
    data['id'] = this.id;
    data['backdrop_path'] = this.backdropPath;
    // data['vote_average'] = this.voteAverage;
    data['overview'] = this.overview;
    data['first_air_date'] = this.firstAirDate;
    data['origin_country'] = this.originCountry;
    data['genre_ids'] = this.genreIds;
    data['original_language'] = this.originalLanguage;
    data['vote_count'] = this.voteCount;
    data['name'] = this.name;
    data['original_name'] = this.originalName;
    return data;
  }
}
