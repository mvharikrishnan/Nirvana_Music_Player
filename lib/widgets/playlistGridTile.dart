import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nirvana/Functions/usingFunctions.dart';
import 'package:nirvana/database/songdb.dart';
import 'package:nirvana/screens/playlistViewingScreen.dart';

class PlaylistGridTile extends StatelessWidget {
  PlaylistGridTile({
    Key? key,
    required this.PlaylistTitle,
    required this.PlaylistSongCount,
    required this.PlaylistBackgroundImage,
    required this.PlayListName,
    required this.playlistSongList,
  }) : super(key: key);
  final String PlaylistTitle;
  final String PlaylistSongCount;
  final String PlaylistBackgroundImage;
  final String PlayListName;
  final List<Songs> playlistSongList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => PlaylistViewingScreen(
              Title: PlaylistTitle,
              SongCount: PlaylistSongCount,
              playlistName: PlayListName,
              songList: playlistSongList,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            height: 180,
            width: 165,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(PlaylistBackgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: 20,
            child: IconButton(
              onPressed: () {
                //function to delete the playlist
                PlaylistDeleteFuntion(
                    context: context, Playlistname: PlayListName);
              },
              icon: Icon(
                Icons.more_vert,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 2,
            child: Container(
              height: 52,
              width: 165,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xFF824EA7),
                    Colors.transparent,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      PlaylistTitle,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '$PlaylistSongCount Songs',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFC87DFF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
