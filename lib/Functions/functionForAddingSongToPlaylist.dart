import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/database/songdb.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class SongsToPlaylistClass {
  static final Box<List> LikedSongBox = getPlaylistBox();
  static final Box<Songs> songBox = getSongBox();

  static addSongToPlaylist(
      {required BuildContext context,
      required String ID,
      required String PlaylistName}) async {
    final List<Songs> songsList = songBox.values.toList().cast();
    final List<Songs> PlaylistNameList =
        LikedSongBox.get(PlaylistName)!.toList().cast<Songs>();
    final Songs likedMusicRef =
        songsList.firstWhere((song) => song.songPath.contains(ID));

    if (PlaylistNameList.where(
        (Songs) => Songs.songPath == likedMusicRef.songPath).isEmpty) {
      PlaylistNameList.add(likedMusicRef);
      await LikedSongBox.put(PlaylistName, PlaylistNameList);

      //snackbarfunctionhere
      ShowSnackBar(
        context: context,
        songName: likedMusicRef.songTitle,
        message: 'Added to $PlaylistName Songs',
      );
    } else {
      // PlaylistNameList
      //     .removeWhere((Songs) => Songs.songPath == likedMusicRef.songPath);
      // await LikedSongBox.put(PlaylistName, PlaylistNameList);
      //show the snakbar
      ShowSnackBar(
        context: context,
        songName: likedMusicRef.songTitle,
        message: 'Already Exit in $PlaylistName ',
      );
    }
  }

  static ShowSnackBar({
    required BuildContext context,
    required String songName,
    required String message,
  }) {
    showTopSnackBar(
      context,
      Container(
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              songName,
              style: const TextStyle(fontSize: 13, color: Colors.black),
            ),
            Text(
              message,
              style: const TextStyle(fontSize: 13, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
