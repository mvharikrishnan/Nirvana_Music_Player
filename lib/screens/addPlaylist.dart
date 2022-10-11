import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nirvana/Functions/usingFunctions.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';

import 'package:nirvana/widgets/addtoplaylistTile.dart';
import 'package:nirvana/widgets/textFormField.dart';

class AddToPlaylist extends StatefulWidget {
  const AddToPlaylist(
      {Key? key,
      required this.Index,
      required this.audioPlayer,
      required this.songList})
      : super(key: key);
  final String Index;
  final List<Audio> songList;
  final AssetsAudioPlayer audioPlayer;
  @override
  State<AddToPlaylist> createState() => _AddToPlaylistState();
}

class _AddToPlaylistState extends State<AddToPlaylist> {
  Box<List> playlistBox = getPlaylistBox();
  @override
  Widget build(BuildContext context) {
    TextEditingController? playlistcontroler;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF3B1F50),
        elevation: 0,
        title: Text(
          'Add to Playlist',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      backgroundColor: Color(0xFF3B1F50),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      playlistCreateAlertBox(context: context);
                    },
                    child: Container(
                      height: 42,
                      width: 145,
                      decoration: BoxDecoration(
                          color: Color(0xFFD933C3),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'New Playlist',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              textFormField(
                  hinttext: 'Find Playlist',
                  textEditController: playlistcontroler),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView(
                    children: [
                      ValueListenableBuilder(
                        valueListenable: playlistBox.listenable(),
                        builder: (context, Box<List> value, child) {
                          List playlistcontent = playlistBox.keys.toList();
                          playlistcontent.removeWhere(
                              (element) => element == 'MostPlayed');
                          playlistcontent.removeWhere(
                              (element) => element == 'LikedSongs');
                          playlistcontent.removeWhere(
                              (element) => element == 'RecentSongs');
                          // String playlist = playlistcontent[]
                          return (playlistBox.isEmpty)
                              ? Center(
                                  child: Text(
                                  'No Playlist Found Please Create One',
                                  style: TextStyle(color: Colors.white),
                                ))
                              : ListView.builder(
                                  shrinkWrap: true,
                                  physics: ScrollPhysics(),
                                  itemCount: playlistcontent.length,
                                  itemBuilder: (context, index) {
                                    return AddtoPlayListTILE(
                                      'Owners Name',
                                      ImagePathAddToProfile:
                                          'assets/images/Art.jpg',
                                      PlaylistTitle: playlistcontent[index],
                                      Index: widget.Index,
                                      audioPlayer: widget.audioPlayer,
                                      songList: [],
                                      context: context,
                                    );
                                  },
                                );
                        },
                      ),
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
