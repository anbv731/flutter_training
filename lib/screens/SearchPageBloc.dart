import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_training/screens/SearchPageEvent.dart';
import 'package:flutter_training/screens/SearchPageState.dart';

class SearchPageBloc extends Bloc<SearchPageEvent,SearchPageState>{
  // SearchPageBloc(SearchPageState initialState) : super(InitialSearchPageState());

  SearchPageBloc():super(InitialSearchPageState()){
    on<InitialSearchPageEvent>(_onLoadData);
  }
  void _onLoadData(InitialSearchPageEvent event, Emitter<SearchPageState> emitter ) {

  }
}