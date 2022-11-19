import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/model/songdb.dart';
import 'package:nirvana/view/presentation/settings_screen/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'fav_screen_event.dart';
part 'fav_screen_state.dart';
part 'fav_screen_bloc.freezed.dart';

class FavScreenBloc extends Bloc<FavScreenEvent, FavScreenState> {
  FavScreenBloc() : super(FavScreenState.initial()) {
    on<CurrentSongListInFAV>((event, emit)async {
      
      emit(FavScreenState(songList: event.songList));
    });
  }
}
