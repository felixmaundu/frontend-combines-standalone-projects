class MainTvModel {
  int? page;
  List<Results>? results;
  int? totalResults;
  int? totalPages;

  MainTvModel({this.page, this.results, this.totalResults, this.totalPages});

  MainTvModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
    totalResults = json['total_results'];
    totalPages = json['total_pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    data['total_results'] = this.totalResults;
    data['total_pages'] = this.totalPages;
    return data;
  }
}

class Results {
  String? posterPath;
  double? popularity;
  int? id;
  String? backdropPath;
  double? voteAverage;
  String? overview;
  String? firstAirDate;
  List<String>? originCountry;
  List<int>? genreIds;
  String? originalLanguage;
  int? voteCount;
  String? name;
  String? originalName;

  Results(
      {this.posterPath,
      this.popularity,
      this.id,
      this.backdropPath,
      this.voteAverage,
      this.overview,
      this.firstAirDate,
      this.originCountry,
      this.genreIds,
      this.originalLanguage,
      this.voteCount,
      this.name,
      this.originalName});

  Results.fromJson(Map<String, dynamic> json) {
    posterPath = json['poster_path'];
    popularity = json['popularity'];
    id = json['id'];
    backdropPath = json['backdrop_path'];
    voteAverage = json['vote_average'];
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
    data['vote_average'] = this.voteAverage;
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
