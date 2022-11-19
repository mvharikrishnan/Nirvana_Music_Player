part of 'now_playling_bloc.dart';

@freezed
class NowPlaylingState with _$NowPlaylingState {
  const factory NowPlaylingState({
    required bool isLooping,
    required bool isSound,
    required bool isPlaying,
    required bool isFavorite,
    AssetsAudioPlayer? audioPlayer,
  }) = _NowPlaylingState;

  factory NowPlaylingState.initial() {
    return const NowPlaylingState(
      isPlaying: true,
      isLooping: false,
      isSound: true,
      isFavorite: false,
    );
  }
}
