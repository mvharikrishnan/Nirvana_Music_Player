import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/model/songdb.dart';

part 'play_list_screen_event.dart';
part 'play_list_screen_state.dart';
part 'play_list_screen_bloc.freezed.dart';

class PlayListScreenBloc
    extends Bloc<PlayListScreenEvent, PlayListScreenState> {
  PlayListScreenBloc() : super(PlayListScreenState.intial()) {
    Box<List> PlaylistBox = getPlaylistBox();
    on<CurrentSongsList>((event, emit) {
      List<Songs> playlistSongsList =
          PlaylistBox.get(event.PlaylistName)!.toList().cast();
      emit(PlayListScreenState(
        PlayListName: event.PlaylistName,
        playlistSongsList: playlistSongsList,
        PlaylistNames: state.PlaylistNames,
      ));
    });

    on<PlaylistNames>((event, emit) {
      emit(PlayListScreenState(
        PlayListName: state.PlayListName,
        playlistSongsList: state.playlistSongsList,
        PlaylistNames: PlaylistBox.keys.toList(),
      ));
    });

    on<RenamePlaylist>((event, emit) async{
      log('Entered to bloc');
     
      List<Songs> PlaylistSongs =
          PlaylistBox.get(state.PlayListName)!.toList().cast();
          log(state.PlayListName);
      log('New Playlist Songs Fetched -- ${PlaylistSongs.length}');
      PlaylistBox.put(event.newPlayListName, PlaylistSongs);
      log('New SongsList Saved');
      PlaylistBox.delete( event.oldPlayListName);
     
      emit(PlayListScreenState(
        PlayListName: event.newPlayListName,
        playlistSongsList: PlaylistSongs,
        PlaylistNames: state.PlaylistNames,
      ));
      log('Exited From Bloc');
    });
  }
}
