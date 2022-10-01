import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:nirvana/database/songdb.dart';
import 'package:nirvana/widgets/miniMusicPlayer.dart';

showMiniPlayer({
  required BuildContext context,
  required int index,
  required List<Songs> songList,
  required AssetsAudioPlayer audioPlayer,
}) {
  return showBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) {
      return MiniMusicPlayer(
        audioPlayer: audioPlayer,
        index: index,
        songList: songList,
      );
    },
  );
}
