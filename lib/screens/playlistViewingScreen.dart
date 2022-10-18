import 'dart:ui';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';

import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/database/songdb.dart';
import 'package:nirvana/widgets/bottomModelSheetAddSongs.dart';
import 'package:nirvana/widgets/songTile.dart';

class PlaylistViewingScreen extends StatelessWidget {
  PlaylistViewingScreen(
      {Key? key,
      required this.Title,
      required this.SongCount,
      required this.playlistName,
      required this.songList})
      : super(key: key);
  final String Title;
  final String SongCount;

  final String playlistName;
  final List<Songs> songList;
  Box<List> playlistBox = getPlaylistBox();
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer.withId('0');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B1F50),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                Text(
                                  playlistName,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            if (playlistName != 'MostPlayed')
                              IconButton(
                                onPressed: () {
                                  BottomModelSheet
                                      .ShowBottomModelSheetAddSongTOPlaylsit(
                                    PlaylistName: playlistName,
                                    context: context,
                                  );
                                },
                                icon: Icon(
                                  Icons.add_box_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 48),
                          child: Row(
                            children: [
                              Text(
                                ' ${songList.length.toString()} Songs',
                                style: TextStyle(
                                    color: Color(0xFFC87DFF),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //Playlist Start Here
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView(
                    children: [
                      ValueListenableBuilder(
                        valueListenable: playlistBox.listenable(),
                        builder: (context, Box<List> value, Widget? child) {
                          List<Songs> musicList = playlistBox
                              .get(playlistName)!
                              .reversed
                              .toList()
                              .cast<Songs>();
                          return (musicList.isEmpty)
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                        child: Text(
                                      'Add some songs to $playlistName ',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ],
                                )
                              : ListView.builder(
                                  itemCount: musicList.length,
                                  shrinkWrap: true,
                                  physics: ScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return SongTile(
                                      Index: index,
                                      audioPlayer: audioPlayer,
                                      //keys: keys,
                                      onpressed: () {},
                                      audioList: musicList,
                                    );
                                  },
                                );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
