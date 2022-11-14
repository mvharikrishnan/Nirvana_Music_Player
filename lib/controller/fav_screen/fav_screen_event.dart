part of 'fav_screen_bloc.dart';

@freezed
class FavScreenEvent with _$FavScreenEvent {
  const factory FavScreenEvent.currentSongListInFAV({required List<Songs> songList}) = CurrentSongListInFAV;
}