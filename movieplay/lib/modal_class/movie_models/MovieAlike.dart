class MovieAlike {
  int? page;
  List<ResultsM>? resultsM;
  int? totalPages;
  int? totalResults;

  MovieAlike({this.page, this.resultsM, this.totalPages, this.totalResults});

  MovieAlike.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      resultsM = <ResultsM>[];
      json['results'].forEach((v) {
        resultsM!.add(new ResultsM.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    if (this.resultsM != null) {
      data['results'] = this.resultsM!.map((v) => v.toJson()).toList();
    }
    data['total_pages'] = this.totalPages;
    data['total_results'] = this.totalResults;
    return data;
  }
}

class ResultsM {
  bool? adult;
  Null? backdropPath;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  String? releaseDate;
  Null? posterPath;
  double? popularity;
  String? title;
  bool? video;
  int? voteAverage;
  int? voteCount;

  ResultsM(
      {this.adult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.releaseDate,
      this.posterPath,
      this.popularity,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount});

  ResultsM.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    releaseDate = json['release_date'];
    posterPath = json['poster_path'];
    popularity = json['popularity'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['genre_ids'] = this.genreIds;
    data['id'] = this.id;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['overview'] = this.overview;
    data['release_date'] = this.releaseDate;
    data['poster_path'] = this.posterPath;
    data['popularity'] = this.popularity;
    data['title'] = this.title;
    data['video'] = this.video;
    data['vote_average'] = this.voteAverage;
    data['vote_count'] = this.voteCount;
    return data;
  }
}
