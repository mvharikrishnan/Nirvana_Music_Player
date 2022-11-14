part of 'fav_screen_bloc.dart';

@freezed
class FavScreenState with _$FavScreenState {
  const factory FavScreenState({
    required List<Songs> songList,
  }) = _FavScreenState;

  factory FavScreenState.initial() {
    Box<List> playlistBox = getPlaylistBox();
    final List<Songs> initialSongList = playlistBox.get('LikedSongs')!.toList().cast();
   
    return FavScreenState(songList: initialSongList);
  }
}
