import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:hive_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nirvana/Functions/usingFunctions.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/model/songdb.dart';
import 'package:nirvana/view/widgets/playlistGridTile.dart';

class PlaylistScreen extends StatelessWidget {
  PlaylistScreen({Key? key}) : super(key: key);
  Box<List> playlistBox = getPlaylistBox();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B1F50),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Playlist',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                      onPressed: () {
                        playlistCreateAlertBox(context: context);
                      },
                      icon: Icon(
                        Icons.add,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ValueListenableBuilder(
                    valueListenable: playlistBox.listenable(),
                    builder: (context, value, child) {
                      List Keys = playlistBox.keys.toList();
                      Keys.removeWhere((element) => element == 'LikedSongs');
                      Keys.removeWhere((element) => element == 'RecentSongs');
                      Keys.removeWhere((element) => element == 'MostPlayed');
                      return (Keys.isEmpty)
                          ? Center(
                              child: Text(
                                'Save your music collections in playlist',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          : GridView.builder(
                              itemCount: Keys.length,
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 15,
                                crossAxisSpacing: 15,
                                childAspectRatio: 1,
                              ),
                              itemBuilder: (context, index) {
                                final String playlistName = Keys[index];
                                final List<Songs> playlistSongList =
                                    playlistBox
                                        .get(playlistName)!.reversed
                                        .toList()
                                        .cast<Songs>();
                                final String playlistSongCount =
                                    playlistSongList.length.toString();
                                return PlaylistGridTile(
                                  PlaylistTitle: playlistName,
                                  PlaylistSongCount: playlistSongCount,
                                  PlaylistBackgroundImage: index % 3 == 0
                                      ? 'assets/images/PlaylistImage2.jpg'
                                      : 'assets/images/PlaylistImage3.jpg',
                                  PlayListName: playlistName,
                                  playlistSongList: playlistSongList,
                                );
                              },
                            );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
