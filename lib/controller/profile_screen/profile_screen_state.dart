part of 'profile_screen_bloc.dart';

@freezed
class ProfileScreenState with _$ProfileScreenState {
  const factory ProfileScreenState({
    required String ProfileUserName,
  }) = _ProfileScreenState;

   factory ProfileScreenState.initial(){
    return ProfileScreenState(ProfileUserName: OldUserName!);
  }
}
