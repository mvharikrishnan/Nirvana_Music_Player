part of 'now_playling_bloc.dart';

@freezed
class NowPlaylingEvent with _$NowPlaylingEvent {
  const factory NowPlaylingEvent.onlooping({
    
    required AssetsAudioPlayer audioPlayer,
  }) = Onlooping;

  const factory NowPlaylingEvent.isSound({
    
    required AssetsAudioPlayer audioPlayer,
  }) = IsSound;

  const factory NowPlaylingEvent.isFavorite({required String ID}) = IsFavorite;
  const factory NowPlaylingEvent.initialising() = Initialising;
}
