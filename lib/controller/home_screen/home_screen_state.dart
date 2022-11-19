part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required List<Songs> HomeSongs,
    
  }) = _HomeScreenState;

  factory HomeScreenState.initial() {
    Box<Songs> songBox = getSongBox();
    
    final List<Songs> homeSongsList = songBox.values.toList();
    
    return HomeScreenState(
      HomeSongs: homeSongsList,
      
    );
  }
}
