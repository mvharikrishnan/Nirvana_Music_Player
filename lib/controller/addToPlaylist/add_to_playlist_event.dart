part of 'add_to_playlist_bloc.dart';

@freezed
class AddToPlaylistEvent with _$AddToPlaylistEvent {
  const factory AddToPlaylistEvent.playlistSearch({required List NewPlaylistLists}) = PlaylistSearch;
   const factory AddToPlaylistEvent.initiailPlaylistNames({required List NewPlaylistLists}) = InitiailPlaylistNames;
}