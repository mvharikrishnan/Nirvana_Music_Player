part of 'add_to_playlist_bloc.dart';

@freezed
class AddToPlaylistState with _$AddToPlaylistState {
  const factory AddToPlaylistState({required List PlaylistNames})= _AddToPlaylistState;

   factory AddToPlaylistState.initial(){
    Box<List> playlistBox = getPlaylistBox();
    final List playlistNamesList = playlistBox.values.toList();
    return AddToPlaylistState(PlaylistNames: playlistNamesList);
  }
}
