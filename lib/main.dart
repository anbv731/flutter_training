import 'package:flutter/material.dart';
import 'package:flutter_training/screens/DetailScreen.dart';
import 'package:flutter_training/screens/FavouritePage.dart';
import 'package:flutter_training/screens/SearchPage.dart';

import 'DoubleToMinutes.dart';
import 'FilmClass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => const MainScreen(),
        DetailScreen.route: (context)=> const DetailScreen()
      },
    );
  }
}



List<FilmClass> voteAverageFilter(List<FilmClass> list, double voteAverage) {
  return list = list.where((film) => film.voteAverage >= voteAverage).toList();
}

class _Tab {
  const _Tab({required this.icon, required this.page, required this.label});

  final Icon icon;
  final String label;
  final Widget page;
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const List<_Tab> _tabs = <_Tab>[
    _Tab(
      icon: Icon(Icons.local_movies_outlined),
      label: 'Feed',
      page: FavouritePage(),
    ),
    _Tab(
      icon: Icon(Icons.movie_filter),
      label: 'Catalog',
      page: SearchPage(),
    ),
  ];

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainScreen._tabs.elementAt(_selectedIndex).page,
      bottomNavigationBar: BottomNavigationBar(
        items: List.generate(
          MainScreen._tabs.length,
              (index) {
            final _Tab tab = MainScreen._tabs[index];
            return BottomNavigationBarItem(
              icon: tab.icon,
              label: tab.label,
            );
          },
        ),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
