import 'dart:developer';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:nirvana/controller/fav_screen/fav_screen_bloc.dart';

import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/model/songdb.dart';

import '../../widgets/songTile.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({Key? key}) : super(key: key);

  final audioPlayer = AssetsAudioPlayer.withId('0');

  Box<List> PlaylistBox = getPlaylistBox();

  Box<Songs> musicBox = getSongBox();

  @override
  Widget build(BuildContext context) {
    // Box<List> playlistBox = getPlaylistBox();
    // final List<Songs> songList = playlistBox.get('LikedSongs')!.toList().cast();
    // BlocProvider.of<FavScreenBloc>(context)
    //     .add(CurrentSongListInFAV(songList: songList));

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Box<List> playlistBox = getPlaylistBox();
      final List<Songs> songList =
          playlistBox.get('LikedSongs')!.toList().cast();
      BlocProvider.of<FavScreenBloc>(context)
          .add(CurrentSongListInFAV(songList: songList));
    });

    log('fav screen called once');
    return Scaffold(
      backgroundColor: const Color(0xFF3B1F50),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Favourite',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.w500),
                  ),
                  BlocBuilder<FavScreenBloc, FavScreenState>(
                    builder: (context, state) {
                      log('count rebuild');
                      return Text(
                        '${state.songList.length} Songs',
                        style: const TextStyle(
                            color: Color(0xFFC87DFF), fontSize: 15),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView(
                  children: [
                    BlocBuilder<FavScreenBloc, FavScreenState>(
                      builder: (context, state) {
                        return (state.songList.isEmpty)
                            ? const Center(
                                child: Text(
                                  'Add Your Favourite Songs',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            : ListView.builder(
                                itemCount: state.songList.length,
                                shrinkWrap: true,
                                physics: const ScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return SongTile(
                                    Index: index,
                                    audioPlayer: audioPlayer,
                                    onpressed: () {},
                                    audioList: state.songList,
                                    homeScreen: true,
                                    PlaylistName: 'LikedSongs',
                                  );
                                },
                              );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
