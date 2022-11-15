part of 'play_list_screen_bloc.dart';

@freezed
class PlayListScreenEvent with _$PlayListScreenEvent {
  const factory PlayListScreenEvent.currentSongsList(
      {required String PlaylistName}) = CurrentSongsList;
}
