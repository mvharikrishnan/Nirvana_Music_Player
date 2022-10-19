import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/database/songdb.dart';
// import 'package:nirvana/widgets/playlistRecenltyTile.dart';
import 'package:nirvana/widgets/songTile.dart';

class RecentlyPlayedScreen extends StatelessWidget {
  RecentlyPlayedScreen({Key? key}) : super(key: key);
  Box<List> PlaylistBox = getPlaylistBox();
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer.withId('0');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B1F50),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Recently Played',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
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
                            ? Center(
                                child: Text(
                                'Playsome Music with Nirvana',
                                style: TextStyle(color: Colors.white),
                              ))
                            : ListView.builder(
                                itemCount: musicList.length,
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
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
