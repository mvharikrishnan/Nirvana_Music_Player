part of 'play_list_screen_bloc.dart';

@freezed
class PlayListScreenEvent with _$PlayListScreenEvent {
  const factory PlayListScreenEvent.currentSongsList(
      {required String PlaylistName}) = CurrentSongsList;

  const factory PlayListScreenEvent.playlistNames() = PlaylistNames;

   const factory PlayListScreenEvent.renamePlaylist({
    required String newPlayListName,
    required String oldPlayListName,
   }) = RenamePlaylist;


}
