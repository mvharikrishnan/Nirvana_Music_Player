import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/model/songdb.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenState.initial()) {
    Box<Songs> songBox = getSongBox();
    final List<Songs> homeSongsList = songBox.values.toList();

    on<Initialise>((event, emit) {
      emit(HomeScreenState(HomeSongs: homeSongsList,));
    });

    on<SearchSongs>((event, emit) {
      //  _SearchedSongs = state.SearchedSOngs;
      // log('Seaerch Screen Called');
      // if (event.searchValue.isNotEmpty) {
      //   List<Songs> _SearchedSongs = state.HomeSongs.where((element) => element
      //       .songTitle
      //       .toString()
      //       .toLowerCase()
      //       .contains(event.searchValue.toLowerCase())).toList();

      //   emit(HomeScreenState(HomeSongs: [], SearchedSOngs: _SearchedSongs));
      //   log('Search Values emited');
      // } else {
      //   emit(HomeScreenState(
      //     HomeSongs: state.HomeSongs,
      //     SearchedSOngs: [],
      //   ));
      // }

      emit(HomeScreenState(HomeSongs: event.NewListSongs));
    });
  }
}
