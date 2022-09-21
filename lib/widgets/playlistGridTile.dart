import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nirvana/screens/playlistViewingScreen.dart';

class PlaylistGridTile extends StatelessWidget {
  const PlaylistGridTile({
    Key? key,
    required this.PlaylistTitle,
    required this.PlaylistSongCount,
    required this.PlaylistBackgroundImage,
  }) : super(key: key);
  final String PlaylistTitle;
  final String PlaylistSongCount;
  final String PlaylistBackgroundImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => PlaylistViewingScreen(
              Title: PlaylistTitle,
              SongCount: PlaylistSongCount,
              image: PlaylistBackgroundImage,
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
            bottom: 10.01,
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
                      PlaylistSongCount,
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
