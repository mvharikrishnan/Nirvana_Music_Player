
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:marquee/marquee.dart';
import 'package:nirvana/Functions/likedSongs.dart';
import 'package:nirvana/Functions/musicFunctions.dart';
import 'package:nirvana/Functions/recentSongs.dart';
import 'package:nirvana/database/songdb.dart';
import 'package:nirvana/screens/songPlayScreen.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SongTile extends StatefulWidget {
  SongTile({
    Key? key,
    required this.Index,
    required this.audioPlayer,
    // required this.keys,
    required this.onpressed,
    required this.audioList,
  }) : super(key: key);

  //final dynamic keys;
  final int Index;
  final AssetsAudioPlayer audioPlayer;
  final void Function()? onpressed;
  final List<Songs> audioList;

  @override
  State<SongTile> createState() => _SongTileState();
}

class _SongTileState extends State<SongTile> {
  // final _audioQurey = new OnAudioQuery();
  final _audioPlayer = new AssetsAudioPlayer();

  Box<Songs> songBox = Hive.box<Songs>('Songs');

  List<Songs> songConvertedList = [];

//     // required this.SongTitle,
  @override
  Widget build(BuildContext context) {
    //convertSong();
    return GestureDetector(
      onTap: () async {
        //Navigator.of(context).push(_createRoute());
        // PlaySong(songConvertedList[Index].songPath);
        // print(songConvertedList[Index].songTitle);
        recentSongsClass.addSongtoRecent(context: context, ID: widget.audioList[widget.Index].songPath);
        showMiniPlayer(
          context: context,
          index: widget.Index,
          songList: widget.audioList,
          audioPlayer: widget.audioPlayer,
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          bottom: 9,
        ),
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(35, 201, 125, 255),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 40,
                    width: 40,
                    child: QueryArtworkWidget(
                      artworkFit: BoxFit.cover,
                      artworkBorder: BorderRadius.circular(8),
                      artworkHeight: 200.0,
                      id: int.parse(
                          widget.audioList[widget.Index].id.toString()),
                      type: ArtworkType.AUDIO,
                      nullArtworkWidget: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage('assets/images/songTileDummy.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                        width: 200,
                        child:

                            //start here
                            Text(
                          widget.audioList[widget.Index].songTitle,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        //end here
                      ),
                      SizedBox(
                        width: 150,
                        height: 20,
                        child: Text(
                          widget.audioList[widget.Index].songArtist,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Color(0xFFD594EE),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      PlaylistSongsClass.addSongToLiked(
                          context: context,
                          ID: widget.audioList[widget.Index].songPath);
                      setState(() {
                        PlaylistSongsClass.isLiked(
                            ID: widget.audioList[widget.Index].songPath);
                      });
                    },
                    icon: Icon(
                      // Icons.favorite,
                      color: Color(
                        0xFFD594EE,
                      ),
                      PlaylistSongsClass.isLiked(
                          ID: widget.audioList[widget.Index].songPath),
                    ),
                  ),
                  // SizedBox(
                  //   width: 5,
                  // ),
                  PopupMenuButton(
                      color: Color.fromARGB(250, 59, 31, 80),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      icon: Icon(
                        Icons.more_vert_outlined,
                        color: Colors.white,
                      ),
                      itemBuilder: (context) => [
                            PopupMenuItem(
                                child: Column(
                              children: [
                                TextButton(
                                  autofocus: false,
                                  onPressed: () {},
                                  child: Text(
                                    'ADD TO PLAYLIST',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ))
                          ])
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  PlaySong(String? Uri) {
    try {
      _audioPlayer.open(
        Audio.file(Uri!),
        headPhoneStrategy: HeadPhoneStrategy.pauseOnUnplug,
      );
    } on Exception {
      print('Song is not Playable');
    }
  }
}
