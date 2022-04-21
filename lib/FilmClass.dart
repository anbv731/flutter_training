import 'package:flutter_training/Film.dart';
import 'package:flutter_training/Language.dart';
import 'package:flutter_training/LangugeConverter.dart';

class FilmClass extends Film with LanguageConverter {
  FilmClass(
      {required String id,
      required String title,
      required String picture,
      required double voteAverage,
      required String releaseDate,
      required String description,
      required String language})
      : super(
            id: id,
            title: title,
            picture: picture,
            voteAverage: voteAverage,
            releaseDate: releaseDate,
            description: description,
            language: language);

  Language converter() {
    return convert(language);
  }
}


