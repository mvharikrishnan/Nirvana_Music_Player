import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:nirvana/Functions/functionForAddingSongToPlaylist.dart';

import 'package:nirvana/Functions/likedSongs.dart';
import 'package:nirvana/Functions/musicFunctions.dart';
import 'package:nirvana/Functions/recentSongs.dart';
import 'package:nirvana/controller/fav_screen/fav_screen_bloc.dart';
import 'package:nirvana/model/songdb.dart';
import 'package:nirvana/view/presentation/addPlaylist.dart';

import 'package:on_audio_query/on_audio_query.dart';

class SongTile extends StatelessWidget {
  SongTile({
    Key? key,
    required this.Index,
    required this.audioPlayer,
    required this.onpressed,
    required this.audioList,
    required this.homeScreen,
    required this.PlaylistName,
  }) : super(key: key);

  final int Index;
  final AssetsAudioPlayer audioPlayer;
  final void Function()? onpressed;
  final List<Songs> audioList;
  final bool homeScreen;
  final String PlaylistName;

  final _audioPlayer = new AssetsAudioPlayer();

  Box<Songs> songBox = Hive.box<Songs>('Songs');

  List<Songs> songConvertedList = [];

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {});
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () async {
        recentSongsClass.addSongtoRecent(
            context: context, ID: audioList[Index].songPath);
        showMiniPlayer(
          context: context,
          index: Index,
          songList: audioList,
          audioPlayer: audioPlayer,
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
        child: Column(
          children: [
            Padding(
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
                          id: int.parse(audioList[Index].id.toString()),
                          type: ArtworkType.AUDIO,
                          nullArtworkWidget: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/songTileDummy.jpg'),
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
                            width: Width / 3,
                            child:

                                //start here
                                Text(
                              audioList[Index].songTitle,
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
                            width: Width * 0.4,
                            height: 20,
                            child: Text(
                              audioList[Index].songArtist,
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
                      BlocBuilder<FavScreenBloc, FavScreenState>(
                        builder: (context, state) {
                          return IconButton(
                            onPressed: () {
                              PlaylistSongsClass.addSongToLiked(
                                  context: context,
                                  ID: audioList[Index].songPath);
                              BlocProvider.of<FavScreenBloc>(context).add(
                                  CurrentSongListInFAV(songList: audioList));

                                  
                            },
                            icon: Icon(
                              // Icons.favorite,
                              color: const Color(
                                0xFFD594EE,
                              ),
                              state.songList
                                      .where((song) =>
                                          song.id == audioList[Index].id)
                                      .isEmpty
                                  ? Icons.favorite_border
                                  : Icons.favorite,
                            ),
                          );
                        },
                      ),
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
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (ctx) => AddToPlaylist(
                                          Index: audioList[Index].songPath,
                                          audioPlayer: audioPlayer,
                                          songList: audioList.cast<Audio>(),
                                        ),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'ADD TO PLAYLIST',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            enabled: homeScreen,
                            onTap: () {
                              SongsToPlaylistClass.DeleteSongFromPlaylist(
                                context: context,
                                ID: audioList[Index].id.toString(),
                                PlaylistName: PlaylistName,
                              );
                            },
                            child: Visibility(
                              visible: homeScreen,
                              child: const Text('REMOVE',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
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
