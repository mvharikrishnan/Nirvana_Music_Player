//import 'package:flutter/cupertino.dart';
//import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/database/songdb.dart';
import 'package:hive_flutter/hive_flutter.dart';

class PlaylistSongsClass{
  static final Box<List>LikedSongBox = getPlaylistBox();
  static final Box<Songs>songBox = getSongBox();

 static addSongToLiked({required BuildContext context,required String ID})async{
    final  List<Songs> songsList = songBox.values.toList().cast();
    final  List<Songs> likedList = LikedSongBox.get('LikedSongs')!.toList().cast<Songs>();
    final Songs likedMusicRef = songsList.firstWhere((song) => song.songPath.contains(ID));

    if(likedList.where((Songs) => Songs.songPath == likedMusicRef.songPath).isEmpty){
      likedList.add(likedMusicRef);
      await LikedSongBox.put('LikedSongs', likedList);
      
      //snackbarfunctionhere
    }else{
      likedList.removeWhere((Songs) => Songs.songPath==likedMusicRef.songPath);
      await LikedSongBox.put('LikedSongs', likedList);
      //show the snakbar
    }
  }
}