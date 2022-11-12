import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/model/songdb.dart';
import 'package:nirvana/view/presentation/playlist_screen/playlistViewingScreen.dart';

class PlaylistHomeScreenTile extends StatefulWidget {
  const PlaylistHomeScreenTile({
    Key? key,
    required this.PlaylistCoverIMGPath,
    required this.PlaylistName,
    this.songsCountInPlaylist,
    required this.playlistKeyTITLE,
  }) : super(key: key);
  final String PlaylistName;
  final String PlaylistCoverIMGPath;
  final String? songsCountInPlaylist;
  final String playlistKeyTITLE;

  @override
  State<PlaylistHomeScreenTile> createState() => _PlaylistHomeScreenTileState();
}

class _PlaylistHomeScreenTileState extends State<PlaylistHomeScreenTile> {
  Box<List>playlistBox = getPlaylistBox();
  // List<List>songList = playlistBox.get('playlistKeyTITLE')!.toList().cast();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => PlaylistViewingScreen(
              Title: widget.PlaylistName,
              SongCount: playlistBox.get(widget.playlistKeyTITLE)!.toList().length.toString(),
              playlistName: widget.playlistKeyTITLE,
              songList: playlistBox.get(widget.playlistKeyTITLE)!.toList().cast<Songs>(),
            ),
          ),
        );
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 15),
              height: 212,
              width: 196,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(widget.PlaylistCoverIMGPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.PlaylistName,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
                // Text(
                //   '$songsCountInPlaylist Songs',
                //   style: TextStyle(
                //       color: Color(0xFFD594EE),
                //       fontWeight: FontWeight.w500,
                //       fontSize: 15),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
