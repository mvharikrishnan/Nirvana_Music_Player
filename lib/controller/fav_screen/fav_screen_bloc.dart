import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/model/songdb.dart';

part 'fav_screen_event.dart';
part 'fav_screen_state.dart';
part 'fav_screen_bloc.freezed.dart';

class FavScreenBloc extends Bloc<FavScreenEvent, FavScreenState> {
  FavScreenBloc() : super(FavScreenState.initial()) {
    on<CurrentSongListInFAV>((event, emit) {
      emit(FavScreenState(songList: event.songList));
    });
  }
}
