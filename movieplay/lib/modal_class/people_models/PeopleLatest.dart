class PeopleLatest {
  bool? adult;
  String? biography;
  String? birthday;
  String? deathday;
  int? gender;
  String? homepage;
  int? id;
  Null? imdbId;
  String? name;
  String? placeOfBirth;
  int? popularity;
  String? profilePath;

  PeopleLatest(
      {this.adult,
      this.biography,
      this.birthday,
      this.deathday,
      this.gender,
      this.homepage,
      this.id,
      this.imdbId,
      this.name,
      this.placeOfBirth,
      this.popularity,
      this.profilePath});

  PeopleLatest.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    biography = json['biography'];
    birthday = json['birthday'];
    deathday = json['deathday'];
    gender = json['gender'];
    homepage = json['homepage'];
    id = json['id'];
    imdbId = json['imdb_id'];
    name = json['name'];
    placeOfBirth = json['place_of_birth'];
    popularity = json['popularity'];
    profilePath = json['profile_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adult'] = this.adult;
    data['biography'] = this.biography;
    data['birthday'] = this.birthday;
    data['deathday'] = this.deathday;
    data['gender'] = this.gender;
    data['homepage'] = this.homepage;
    data['id'] = this.id;
    data['imdb_id'] = this.imdbId;
    data['name'] = this.name;
    data['place_of_birth'] = this.placeOfBirth;
    data['popularity'] = this.popularity;
    data['profile_path'] = this.profilePath;
    return data;
  }
}
