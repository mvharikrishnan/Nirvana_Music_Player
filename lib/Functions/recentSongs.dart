import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:nirvana/Functions/mostPlayedSong.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/database/songdb.dart';

class recentSongsClass {
  static final Box<List> playlistBox = getPlaylistBox();
  static final Box<Songs> SongBox = getSongBox();
  static addSongtoRecent({required BuildContext context, required String ID})async {
    final List<Songs> allSongs = SongBox.values.toList().cast<Songs>();
    final List<Songs> recentSongList =
        playlistBox.get('RecentSongs')!.toList().cast<Songs>();
    final Songs recentSong =
        allSongs.firstWhere((song) => song.songPath.contains(ID));
        int count = recentSong.flag;
        recentSong.flag=count+1;
        //function to add the most song to db
        MostPlayedSongsClass.addSongtoMostPlayed(context: context, ID: ID);
        if(recentSongList.length >=15){
          recentSongList.removeLast();
        }
        if(recentSongList.where((song) => song.songPath == recentSong.songPath).isEmpty){
          recentSongList.add(recentSong);
          await playlistBox.put('RecentSongs', recentSongList);
        }else{
          recentSongList.removeWhere((song) => song.songPath == recentSong.songPath);
          recentSongList.add(recentSong);
          await playlistBox.put('RecentSongs', recentSongList);
        }
  }
}
