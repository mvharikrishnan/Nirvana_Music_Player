import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:nirvana/Functions/functionForAddingSongToPlaylist.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/database/songdb.dart';
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
      backgroundColor: Color.fromARGB(93, 72, 5, 82),
      context: context,
      builder: (context) {
        return ListView.builder(
          itemCount: audioList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                margin: EdgeInsets.only(left: 10),
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
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/songTileDummy.jpg'),
                      ),
                    ),
                  ),
                ),
              ),
              title: Text(
                audioList[index].songTitle,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  SongsToPlaylistClass.addSongToPlaylist(
                    context: context,
                    ID: audioList[index].songPath,
                    PlaylistName: PlaylistName,
                  );
                },
                icon: Icon(
                  Icons.add_rounded,
                  color: Colors.green,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
