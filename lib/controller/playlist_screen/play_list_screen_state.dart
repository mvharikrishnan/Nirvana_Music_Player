part of 'play_list_screen_bloc.dart';

@freezed
class PlayListScreenState with _$PlayListScreenState {
  const factory PlayListScreenState({
    required String PlayListName,
    required List<Songs> playlistSongsList,
  }) = _PlayListScreenState;

  factory PlayListScreenState.intial() {
    return const PlayListScreenState(
      PlayListName: '',
      playlistSongsList: [],
    );
  }
}
