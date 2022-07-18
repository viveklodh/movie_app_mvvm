
class MovieModel {

  String? title;
  String? posterUrl;

  MovieModel({this.title, this.posterUrl});

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
        title: json["Title"],
        posterUrl: json["Poster"]
    );
  }

}