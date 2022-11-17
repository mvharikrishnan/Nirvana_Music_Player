import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:hive_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nirvana/Functions/usingFunctions.dart';
import 'package:nirvana/controller/playlist_screen/play_list_screen_bloc.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/model/songdb.dart';
import 'package:nirvana/view/widgets/playlistGridTile.dart';

class PlaylistScreen extends StatelessWidget {
  PlaylistScreen({Key? key}) : super(key: key);
  Box<List> playlistBox = getPlaylistBox();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PlayListScreenBloc>(context).add(PlaylistNames());
    });
    return Scaffold(
      backgroundColor: const Color(0xFF3B1F50),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
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
                      icon: const Icon(
                        Icons.add,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BlocBuilder<PlayListScreenBloc, PlayListScreenState>(
                    builder: (context, state) {
                      List Keys = state.PlaylistNames.toList();
                      Keys.removeWhere((element) => element == 'LikedSongs');
                      Keys.removeWhere((element) => element == 'RecentSongs');
                      Keys.removeWhere((element) => element == 'MostPlayed');
                      return (Keys.isEmpty)
                          ? const Center(
                              child: Text(
                                'Save your music collections in playlist',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          : GridView.builder(
                              itemCount: Keys.length,
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 15,
                                crossAxisSpacing: 15,
                                childAspectRatio: 1,
                              ),
                              itemBuilder: (context, index) {
                                final String playlistName = Keys[index];
                                final List<Songs> playlistSongList = playlistBox
                                    .get(playlistName)!
                                    .reversed
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
