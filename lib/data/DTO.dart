import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class FilmDTO {
  FilmDTO({this.id, this.name, this.rating, this.year})

  @JsonKey(name: 'filmId')
  final String? id;
  @JsonKey(name: 'nameEn')
  final String? name;
  @JsonKey(name: 'rating')
  final String? rating;
  @JsonKey(name: 'year')
  final String? year;
}