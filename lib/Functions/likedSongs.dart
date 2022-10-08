
import 'package:flutter/material.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/database/songdb.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:top_snackbar_flutter/tap_bounce_container.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class PlaylistSongsClass {
  static final Box<List> LikedSongBox = getPlaylistBox();
  static final Box<Songs> songBox = getSongBox();

  static addSongToLiked(
      {required BuildContext context, required String ID}) async {
    final List<Songs> songsList = songBox.values.toList().cast();
    final List<Songs> likedList =
        LikedSongBox.get('LikedSongs')!.toList().cast<Songs>();
    final Songs likedMusicRef =
        songsList.firstWhere((song) => song.songPath.contains(ID));

    if (likedList
        .where((Songs) => Songs.songPath == likedMusicRef.songPath)
        .isEmpty) {
      likedList.add(likedMusicRef);
      await LikedSongBox.put('LikedSongs', likedList);

      //snackbarfunctionhere
      ShowSnackBar(
        context: context,
        songName: likedMusicRef.songTitle,
        message: 'Added to Liked Songs',
      );
    } else {
      likedList
          .removeWhere((Songs) => Songs.songPath == likedMusicRef.songPath);
      await LikedSongBox.put('LikedSongs', likedList);
      //show the snakbar
      ShowSnackBar(
        context: context,
        songName: likedMusicRef.songTitle,
        message: 'Removed From Liked',
      );
    }
  }

  static IconData isLiked({required String ID}) {
    final List<Songs> storageSongs = songBox.values.toList().cast();
    List<Songs> likedList = LikedSongBox.get('LikedSongs')!.toList().cast();
    Songs liked = storageSongs.firstWhere((song) => song.songPath.contains(ID));
    return likedList.where((song) => song.songPath == liked.songPath).isEmpty
        ? Icons.favorite_border
        : Icons.favorite;
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
