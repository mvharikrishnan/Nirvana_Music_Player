import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nirvana/view/presentation/settings_screen/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'profile_screen_event.dart';
part 'profile_screen_state.dart';
part 'profile_screen_bloc.freezed.dart';

class ProfileScreenBloc extends Bloc<ProfileScreenEvent, ProfileScreenState> {
  ProfileScreenBloc() : super(ProfileScreenState.initial()) {
    on<GetUserName>((event, emit) async {
      OldUserName = event.userNameSP;
      
      emit(ProfileScreenState(ProfileUserName: OldUserName!));
    });
  }
}
