import 'dart:developer';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/model/songdb.dart';

part 'now_playling_event.dart';
part 'now_playling_state.dart';
part 'now_playling_bloc.freezed.dart';

class NowPlaylingBloc extends Bloc<NowPlaylingEvent, NowPlaylingState> {
  Box<Songs> songBox = getSongBox();
  Box<List> LikedSongBox = getPlaylistBox();
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
  NowPlaylingBloc() : super(NowPlaylingState.initial()) {
    on<Onlooping>((event, emit) {
      log("Entered in loop");
      state.isLooping
          ? event.audioPlayer.setLoopMode(LoopMode.none)
          : event.audioPlayer.setLoopMode(LoopMode.single);

      state.isLooping
          ? emit(NowPlaylingState(
              isFavorite: state.isFavorite,
              isLooping: true,
              isSound: state.isSound,
              isPlaying: state.isPlaying,
            ))
          : emit(NowPlaylingState(
              isFavorite: state.isFavorite,
              isLooping: false,
              isSound: state.isSound,
              isPlaying: state.isPlaying,
            ));

            log('On Loop Emited');
    });

    on<IsSound>((event, emit) {
      state.isSound
          ? event.audioPlayer.setVolume(0)
          : event.audioPlayer.setVolume(1);
      log('Sound Set');
      state.isSound
          ? emit(NowPlaylingState(
              isFavorite: state.isFavorite,
              isLooping: state.isLooping,
              isSound: true,
              isPlaying: state.isPlaying,
            ))
          : emit(NowPlaylingState(
              isFavorite: state.isFavorite,
              isLooping: state.isLooping,
              isSound: false,
              isPlaying: state.isPlaying,
            ));
      log('Emitted');
    });

    on<IsFavorite>((event, emit) {
      final List<Songs> storageSongs = songBox.values.toList().cast();
      List<Songs> likedList = LikedSongBox.get('LikedSongs')!.toList().cast();
      Songs liked =
          storageSongs.firstWhere((song) => song.songPath.contains(event.ID));
      likedList.where((song) => song.songPath == liked.songPath).isEmpty
          ? emit(NowPlaylingState(
              isLooping: state.isLooping,
              isSound: state.isSound,
              isPlaying: state.isPlaying,
              isFavorite: false,
            ))
          : emit(NowPlaylingState(
              isLooping: state.isLooping,
              isSound: state.isSound,
              isPlaying: state.isPlaying,
              isFavorite: true,
            ));
    });

    on<Initialising>((event, emit) {
      emit(NowPlaylingState(
        isPlaying: true,
        isLooping: false,
        isSound: true,
        isFavorite: false,
      ));
    });
  }
}
