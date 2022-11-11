import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/model/songdb.dart';

class MostPlayedSongsClass {
  static final Box<List> playlistBox = getPlaylistBox();
  static final Box<Songs> SongBox = getSongBox();
  static addSongtoMostPlayed(
      {required BuildContext context, required String ID}) async {
    final List<Songs> allSongs = SongBox.values.toList().cast<Songs>();
    final List<Songs> MostPlayedSongList =
        playlistBox.get('MostPlayed')!.toList().cast<Songs>();
    final Songs MostPlayedSong =
        allSongs.firstWhere((song) => song.songPath.contains(ID));

    if (MostPlayedSongList.length >= 15) {
      MostPlayedSongList.removeLast();
    }
    if(MostPlayedSong.flag >=5){
      if (MostPlayedSongList
        .where((song) => song.songPath == MostPlayedSong.songPath)
        .isEmpty) {
      MostPlayedSongList.add(MostPlayedSong);
      await playlistBox.put('MostPlayed', MostPlayedSongList);
    } else {
      MostPlayedSongList
          .removeWhere((song) => song.songPath == MostPlayedSong.songPath);
      MostPlayedSongList.add(MostPlayedSong);
      await playlistBox.put('MostPlayed', MostPlayedSongList);
    }
    }
  }
}
