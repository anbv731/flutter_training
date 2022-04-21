abstract class Film {
  String id;
  String title;
  String picture;
  double voteAverage;
  String releaseDate;
  String description;
  String language;

  Film(
      {required this.id,
      required this.title,
      required this.description,
      required this.picture,
      required this.releaseDate,
      required this.language,
      required this.voteAverage});
}
