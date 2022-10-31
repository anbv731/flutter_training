import 'package:flutter/material.dart';
import 'package:flutter_training/FilmClass.dart';
import 'package:flutter_training/screens/widgets/FilmPreview.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final List<FilmClass>films = getFilmList();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter training'),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.blue,
                Colors.blueGrey,
                Colors.green,
              ])),
          child: ListView.builder(
              itemCount: films.length,
              itemBuilder: (context, index) =>
                  FilmPreview.fromFilmClass(films[index])),
        ));
  }
  List<FilmClass> getFilmList() {
    List<FilmClass> list = [
      FilmClass(
          id: '1',
          title: 'Interstellar',
          picture:
          'https://upload.wikimedia.org/wikipedia/ru/c/c3/Interstellar_2014.jpg',
          voteAverage: 2.5,
          releaseDate: "07.11.2014",
          description:
          'Interstellar is about Earth’s last chance to find a habitable planet before a lack of resources causes the human race to go extinct. The film’s protagonist is Cooper (Matthew McConaughey), a former NASA pilot who is tasked with leading a mission through a wormhole to find a habitable planet in another galaxy.',
          language: 'English'),
      FilmClass(
          id: '2',
          title: 'Snatch',
          picture:
          'http://kinohod.ru/o/ac/a0/aca05a82-d03b-11eb-b2cf-b0d5d0139a1b.jpg',
          voteAverage: 1.9,
          releaseDate: '23.08.2000',
          description:
          'Unscrupulous boxing promoters, violent bookmakers, a Russian gangster, incompetent amateur robbers and supposedly Jewish jewelers fight to track down a priceless stolen diamond',
          language: 'English'),
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
          language: 'English'),
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
}


