class PeopleTaggedImages {
  int? id;
  int? page;
  List<Results>? results;
  int? totalPages;
  int? totalResults;

  PeopleTaggedImages(
      {this.id, this.page, this.results, this.totalPages, this.totalResults});

  PeopleTaggedImages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    page = json['page'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['page'] = this.page;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    data['total_pages'] = this.totalPages;
    data['total_results'] = this.totalResults;
    return data;
  }
}

class Results {
  double? aspectRatio;
  String? filePath;
  int? height;
  String? id;
  String? iso6391;
  double? voteAverage;
  int? voteCount;
  int? width;
  String? imageType;
  Media? media;
  String? mediaType;

  Results(
      {this.aspectRatio,
      this.filePath,
      this.height,
      this.id,
      this.iso6391,
      this.voteAverage,
      this.voteCount,
      this.width,
      this.imageType,
      this.media,
      this.mediaType});

  Results.fromJson(Map<String, dynamic> json) {
    aspectRatio = json['aspect_ratio'];
    filePath = json['file_path'];
    height = json['height'];
    id = json['id'];
    iso6391 = json['iso_639_1'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
    width = json['width'];
    imageType = json['image_type'];
    media = json['media'] != null ? new Media.fromJson(json['media']) : null;
    mediaType = json['media_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aspect_ratio'] = this.aspectRatio;
    data['file_path'] = this.filePath;
    data['height'] = this.height;
    data['id'] = this.id;
    data['iso_639_1'] = this.iso6391;
    data['vote_average'] = this.voteAverage;
    data['vote_count'] = this.voteCount;
    data['width'] = this.width;
    data['image_type'] = this.imageType;
    if (this.media != null) {
      data['media'] = this.media!.toJson();
    }
    data['media_type'] = this.mediaType;
    return data;
  }
}

class Media {
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  String? sId;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  String? releaseDate;
  String? posterPath;
  double? popularity;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  Media(
      {this.adult,
      this.backdropPath,
      this.genreIds,
      this.sId,
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

  Media.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'].cast<int>();
    sId = json['_id'];
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
    data['_id'] = this.sId;
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
