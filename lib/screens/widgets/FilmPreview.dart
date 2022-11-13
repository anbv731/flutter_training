import 'package:flutter/material.dart';
import 'package:flutter_training/DoubleToMinutes.dart';
import 'package:flutter_training/screens/DetailScreen.dart';

import '../../FilmClass.dart';
import 'RowText.dart';

class FilmPreview extends StatelessWidget {
  const FilmPreview(
      {required this.id,
      required this.title,
      required this.picture,
      required this.voteAverage,
      required this.releaseDate,
      required this.description,
      required this.language,
      required this.onItemClick,
      Key? key})
      : super(key: key);

  final String id;
  final String title;
  final String picture;
  final double voteAverage;
  final String releaseDate;
  final String description;
  final String language;
  final VoidCallback onItemClick;

  factory FilmPreview.fromFilmClass(FilmClass model, VoidCallback onItemClick) {
    return FilmPreview(
        id: model.id,
        title: model.title,
        picture: model.picture,
        voteAverage: model.voteAverage,
        releaseDate: model.releaseDate,
        description: model.description,
        language: model.language,
        onItemClick: onItemClick);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailScreen.route, arguments: id);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1,
                    child: Image.network(picture, loadingBuilder:
                        (BuildContext context, Widget child,
                            ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    })),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RowText('Title', title, bodySize: 32),
                          RowText('Release date', releaseDate),
                          RowText('Vote average',
                              voteAverage.toMinutes() + ' minutes'),
                          IconButton(
                              onPressed: onItemClick,
                              icon: const Icon(Icons.favorite))
                        ],
                      ),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(description),
            )
          ],
        ),
      ),
    );
  }
}
