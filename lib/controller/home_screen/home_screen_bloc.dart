import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/model/songdb.dart';
import 'package:nirvana/view/presentation/settings_screen/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenState.initial()) {
    on<Initialise>((event, emit) {
      emit(HomeScreenState(HomeSongs: state.HomeSongs, SearchedSOngs: []));
    });

    on<SearchSongs>((event, emit) {
      List<Songs> _SearchedSongs = state.SearchedSOngs;
      _SearchedSongs = state.HomeSongs.where((element) => element.songTitle
          .toString()
          .toLowerCase()
          .contains(event.searchValue.toLowerCase())).toList();

      emit(HomeScreenState(
          HomeSongs: state.HomeSongs, SearchedSOngs: _SearchedSongs));
    });
  }
}
