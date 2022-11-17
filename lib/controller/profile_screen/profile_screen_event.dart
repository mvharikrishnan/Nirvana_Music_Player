part of 'profile_screen_bloc.dart';

@freezed
class ProfileScreenEvent with _$ProfileScreenEvent {
  const factory ProfileScreenEvent.getUserName({required String userNameSP}) = GetUserName;
}