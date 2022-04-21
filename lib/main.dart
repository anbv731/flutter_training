import 'package:flutter/material.dart';

import 'FilmClass.dart';

void main() {}

Future<List<FilmClass>> getFilmList() async {
  List<FilmClass> list = [
    FilmClass(
        id: '1',
        title: 'Interstellar',
        picture:
            'https://upload.wikimedia.org/wikipedia/ru/c/c3/Interstellar_2014.jpg',
        voteAverage: 9.5,
        releaseDate: "07.11.2014",
        description:
            'Interstellar is about Earth’s last chance to find a habitable planet before a lack of resources causes the human race to go extinct. The film’s protagonist is Cooper (Matthew McConaughey), a former NASA pilot who is tasked with leading a mission through a wormhole to find a habitable planet in another galaxy.',
        language: 'English'),
    FilmClass(
        id: '2',
        title: 'Snatch',
        picture:
            'http://kinohod.ru/o/ac/a0/aca05a82-d03b-11eb-b2cf-b0d5d0139a1b.jpg',
        voteAverage: 8.5,
        releaseDate: '23.08.2000',
        description:
            'Unscrupulous boxing promoters, violent bookmakers, a Russian gangster, incompetent amateur robbers and supposedly Jewish jewelers fight to track down a priceless stolen diamond',
        language: 'English')
  ];
  return list;
}

List<FilmClass> voteAverageFilter(List<FilmClass> list,double voteAverage){
return list= list.where((film) => film.voteAverage>=voteAverage).toList();
}