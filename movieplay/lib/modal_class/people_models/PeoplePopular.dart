class PeoplePopular {
  int? page;
  List<Results>? results;
  int? totalResults;
  int? totalPages;

  PeoplePopular({this.page, this.results, this.totalResults, this.totalPages});

  PeoplePopular.fromJson(Map<String, dynamic> json) {
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
  String? profilePath;
  bool? adult;
  int? id;
  List<KnownFor>? knownFor;
  String? name;
  double? popularity;

  Results(
      {this.profilePath,
      this.adult,
      this.id,
      this.knownFor,
      this.name,
      this.popularity});

  Results.fromJson(Map<String, dynamic> json) {
    profilePath = json['profile_path'];
    adult = json['adult'];
    id = json['id'];
    if (json['known_for'] != null) {
      knownFor = <KnownFor>[];
      json['known_for'].forEach((v) {
        knownFor!.add(new KnownFor.fromJson(v));
      });
    }
    name = json['name'];
    popularity = json['popularity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['profile_path'] = this.profilePath;
    data['adult'] = this.adult;
    data['id'] = this.id;
    if (this.knownFor != null) {
      data['known_for'] = this.knownFor!.map((v) => v.toJson()).toList();
    }
    data['name'] = this.name;
    data['popularity'] = this.popularity;
    return data;
  }
}

class KnownFor {
  String? posterPath;
  bool? adult;
  String? overview;
  String? releaseDate;
  String? originalTitle;
  List<int>? genreIds;
  int? id;
  String? mediaType;
  String? originalLanguage;
  String? title;
  String? backdropPath;
  double? popularity;
  int? voteCount;
  bool? video;
  double? voteAverage;
  String? firstAirDate;
  List<String>? originCountry;
  String? name;
  String? originalName;

  KnownFor(
      {this.posterPath,
      this.adult,
      this.overview,
      this.releaseDate,
      this.originalTitle,
      this.genreIds,
      this.id,
      this.mediaType,
      this.originalLanguage,
      this.title,
      this.backdropPath,
      this.popularity,
      this.voteCount,
      this.video,
      this.voteAverage,
      this.firstAirDate,
      this.originCountry,
      this.name,
      this.originalName});

  KnownFor.fromJson(Map<String, dynamic> json) {
    posterPath = json['poster_path'];
    adult = json['adult'];
    overview = json['overview'];
    releaseDate = json['release_date'];
    originalTitle = json['original_title'];
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'];
    mediaType = json['media_type'];
    originalLanguage = json['original_language'];
    title = json['title'];
    backdropPath = json['backdrop_path'];
    popularity = json['popularity'];
    voteCount = json['vote_count'];
    video = json['video'];
    voteAverage = json['vote_average'];
    firstAirDate = json['first_air_date'];
    originCountry = json['origin_country'].cast<String>();
    name = json['name'];
    originalName = json['original_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['poster_path'] = this.posterPath;
    data['adult'] = this.adult;
    data['overview'] = this.overview;
    data['release_date'] = this.releaseDate;
    data['original_title'] = this.originalTitle;
    data['genre_ids'] = this.genreIds;
    data['id'] = this.id;
    data['media_type'] = this.mediaType;
    data['original_language'] = this.originalLanguage;
    data['title'] = this.title;
    data['backdrop_path'] = this.backdropPath;
    data['popularity'] = this.popularity;
    data['vote_count'] = this.voteCount;
    data['video'] = this.video;
    data['vote_average'] = this.voteAverage;
    data['first_air_date'] = this.firstAirDate;
    data['origin_country'] = this.originCountry;
    data['name'] = this.name;
    data['original_name'] = this.originalName;
    return data;
  }
}
