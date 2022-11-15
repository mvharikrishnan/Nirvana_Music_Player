import 'dart:ui';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:nirvana/controller/playlist_screen/play_list_screen_bloc.dart';

import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/model/songdb.dart';
import 'package:nirvana/view/widgets/bottomModelSheetAddSongs.dart';
import 'package:nirvana/view/widgets/songTile.dart';

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Box<List> playlistBox = getPlaylistBox();

      BlocProvider.of<PlayListScreenBloc>(context)
          .add(CurrentSongsList(PlaylistName: playlistName));
    });
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
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.0)),
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
                                icon: const Icon(
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
                              BlocBuilder<PlayListScreenBloc,
                                  PlayListScreenState>(
                                builder: (context, state) {
                                  return Text(
                                    ' ${state.playlistSongsList.length} Songs',
                                    style: const TextStyle(
                                        color: Color(0xFFC87DFF),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  );
                                },
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
                      //Bloc Using from Here

                      BlocBuilder<PlayListScreenBloc, PlayListScreenState>(
                        builder: (context, state) {
                          return (state.playlistSongsList.isEmpty)
                              ? const Center(
                                  child: Text(
                                    'Add Your Fav Songs to Playlist',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              : ListView.builder(
                                  itemCount: state.playlistSongsList.length,
                                  shrinkWrap: true,
                                  physics: const ScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return SongTile(
                                      Index: index,
                                      audioPlayer: audioPlayer,
                                      //keys: keys,
                                      onpressed: () {},
                                      audioList: state.playlistSongsList,
                                      homeScreen: true,
                                      PlaylistName: playlistName,
                                    );
                                  },
                                );
                        },
                      )
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
