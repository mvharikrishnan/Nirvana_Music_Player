import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nirvana/Functions/recentSongs.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';

part 'add_to_playlist_event.dart';
part 'add_to_playlist_state.dart';
part 'add_to_playlist_bloc.freezed.dart';

class AddToPlaylistBloc extends Bloc<AddToPlaylistEvent, AddToPlaylistState> {
  AddToPlaylistBloc() : super(AddToPlaylistState.initial()) {
    on<PlaylistSearch>((event, emit) {
      emit(AddToPlaylistState(PlaylistNames: event.NewPlaylistLists));
    });

    on<InitiailPlaylistNames>((event, emit) async {
      Box<List> playlistBox = getPlaylistBox();

      emit(AddToPlaylistState(PlaylistNames: playlistBox.keys.toList()));
    });
  }
}
