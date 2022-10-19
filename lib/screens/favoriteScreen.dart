import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:hive_flutter/hive_flutter.dart';
//import 'package:hive/hive.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/database/songdb.dart';

import '../widgets/songTile.dart';

class FavoriteScreen extends StatefulWidget {
  FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final audioPlayer = AssetsAudioPlayer.withId('0');

  Box<List> PlaylistBox = getPlaylistBox();

  Box<Songs> musicBox = getSongBox();

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Favorite',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '${PlaylistBox.get('LikedSongs')!.toList().length} Songs',
                    style: TextStyle(color: Color(0xFFC87DFF), fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView(
                  children: [
                    ValueListenableBuilder(
                      valueListenable: PlaylistBox.listenable(),
                      builder: (BuildContext context, Box<List> value,
                          Widget? child) {
                        List<Songs> musicList = PlaylistBox.get('LikedSongs')!
                            .reversed
                            .toList()
                            .cast<Songs>();

                        return (musicList.isEmpty)
                            ? Center(
                                child: Text(
                                'Add Your Favotite Songs',
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
                                    //keys: keys,
                                    onpressed: () {},
                                    audioList: musicList,
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
