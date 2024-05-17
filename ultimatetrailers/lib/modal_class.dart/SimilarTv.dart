class SimilarTv {
  int? page;
  List<SimilarResults>? similarresults;
  int? totalPages;
  int? totalResults;

  SimilarTv(
      {this.page, this.similarresults, this.totalPages, this.totalResults});

  SimilarTv.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      similarresults = []; //new List<Results>();
      json['results'].forEach((v) {
        similarresults!.add(new SimilarResults.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    if (this.similarresults != null) {
      data['results'] = this.similarresults!.map((v) => v.toJson()).toList();
    }
    data['total_pages'] = this.totalPages;
    data['total_results'] = this.totalResults;
    return data;
  }
}

class SimilarResults {
  String? backdropPath;
  String? firstAirDate;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalName;
  String? overview;
  List<String>? originCountry;
  String? posterPath;
  double? popularity;
  String? name;
  double? voteAverage;
  int? voteCount;

  SimilarResults(
      {this.backdropPath,
      this.firstAirDate,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalName,
      this.overview,
      this.originCountry,
      this.posterPath,
      this.popularity,
      this.name,
      this.voteAverage,
      this.voteCount});

  SimilarResults.fromJson(Map<String, dynamic> json) {
    backdropPath = json['backdrop_path'];
    firstAirDate = json['first_air_date'];
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'];
    originalLanguage = json['original_language'];
    originalName = json['original_name'];
    overview = json['overview'];
    originCountry = json['origin_country'].cast<String>();
    posterPath = json['poster_path'];
    popularity = json['popularity'];
    name = json['name'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['backdrop_path'] = this.backdropPath;
    data['first_air_date'] = this.firstAirDate;
    data['genre_ids'] = this.genreIds;
    data['id'] = this.id;
    data['original_language'] = this.originalLanguage;
    data['original_name'] = this.originalName;
    data['overview'] = this.overview;
    data['origin_country'] = this.originCountry;
    data['poster_path'] = this.posterPath;
    data['popularity'] = this.popularity;
    data['name'] = this.name;
    data['vote_average'] = this.voteAverage;
    data['vote_count'] = this.voteCount;
    return data;
  }
}
