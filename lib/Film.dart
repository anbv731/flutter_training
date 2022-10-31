abstract class Film {
  const Film.fullConstructor(
      {required this.id,
      required this.title,
      required this.picture,
      required this.voteAverage,
      required this.description,
      required this.language,
      required this.releaseDate});

  final String id;
  final String title;
  final String picture;
  final double voteAverage;
  final String releaseDate;
  final String description;
  final String language;
}
