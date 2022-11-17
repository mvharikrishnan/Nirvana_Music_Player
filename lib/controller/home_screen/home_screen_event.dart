part of 'home_screen_bloc.dart';

@freezed
class HomeScreenEvent with _$HomeScreenEvent {
  const factory HomeScreenEvent.initialise() = Initialise;
   const factory HomeScreenEvent.searchSongs({required String searchValue}) = SearchSongs;
}