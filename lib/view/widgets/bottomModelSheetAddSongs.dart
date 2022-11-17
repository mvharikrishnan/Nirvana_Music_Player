import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:nirvana/Functions/functionForAddingSongToPlaylist.dart';
import 'package:nirvana/controller/playlist_screen/play_list_screen_bloc.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/model/songdb.dart';
import 'package:on_audio_query/on_audio_query.dart';

class BottomModelSheet {
  static Box<List> playlistBox = getPlaylistBox();
  static Box<Songs> songBox = getSongBox();

  static ShowBottomModelSheetAddSongTOPlaylsit(
      {required String PlaylistName, required BuildContext context}) async {
    List<Songs> audioList = [];
    final List<int> Keys = songBox.keys.toList().cast<int>();
    for (var key in Keys) {
      audioList.add(songBox.get(key)!);
    }
    // List<Songs> PlaylistSongs =
    //     playlistBox.get(PlaylistName)!.toList().cast<Songs>();
    // List<Songs> ToBeAddedSongs = [];
    showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: const Color.fromARGB(255, 51, 3, 58),
      context: context,
      builder: (context) {
        return BlocBuilder<PlayListScreenBloc, PlayListScreenState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: audioList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    margin: const EdgeInsets.only(left: 10),
                    height: 40,
                    width: 40,
                    child: QueryArtworkWidget(
                      artworkFit: BoxFit.cover,
                      artworkBorder: BorderRadius.circular(8),
                      artworkHeight: 200.0,
                      id: int.parse(audioList[index].id.toString()),
                      type: ArtworkType.AUDIO,
                      nullArtworkWidget: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage('assets/images/songTileDummy.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    audioList[index].songTitle,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      SongsToPlaylistClass.AddFromSnackBar(
                        context: context,
                        ID: audioList[index].songPath,
                        PlaylistName: PlaylistName,
                      );
                      BlocProvider.of<PlayListScreenBloc>(context)
                          .add(CurrentSongsList(PlaylistName: PlaylistName));
                    },
                    icon: Icon(
                      isSongThereInPlaylist(
                        ID: audioList[index].id.toString(),
                        Playlistname: PlaylistName,
                      ),
                      color: Colors.green,
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  static IconData isSongThereInPlaylist(
      {required String ID, required String Playlistname}) {
    final List<Songs> storageSongs = songBox.values.toList().cast();
    List<Songs> PlaylistSongCheckList =
        playlistBox.get(Playlistname)!.toList().cast();
    Songs songRef =
        storageSongs.firstWhere((song) => song.songPath.contains(ID));
    return PlaylistSongCheckList.where(
            (song) => song.songPath == songRef.songPath).isEmpty
        ? Icons.add_rounded
        : Icons.remove_circle_outline;
  }
}
