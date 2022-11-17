import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/model/songdb.dart';

import 'package:nirvana/view/widgets/songTile.dart';

class RecentlyPlayedScreen extends StatelessWidget {
  RecentlyPlayedScreen({Key? key}) : super(key: key);
  Box<List> PlaylistBox = getPlaylistBox();
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer.withId('0');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3B1F50),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    'Recently Played',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overScroll) {
                  overScroll.disallowIndicator();
                  return true;
                },
                child: ListView(
                  children: [
                    ValueListenableBuilder(
                      valueListenable: PlaylistBox.listenable(),
                      builder: (context, Box<List> value, Widget? child) {
                        List<Songs> musicList = PlaylistBox.get('RecentSongs')!
                            .reversed
                            .toList()
                            .cast<Songs>();
                        return (musicList.isEmpty)
                            ? const Center(
                                child: Text(
                                'Playsome Music with Nirvana',
                                style: TextStyle(color: Colors.white),
                              ))
                            : ListView.builder(
                                itemCount: musicList.length,
                                shrinkWrap: true,
                                physics: const ScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return SongTile(
                                    Index: index,
                                    audioPlayer: audioPlayer,
                                    onpressed: () {},
                                    audioList: musicList,
                                    homeScreen: true,
                                    PlaylistName: 'RecentSongs',
                                  );
                                },
                              );
                      },
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
