import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:nirvana/Functions/usingFunctions.dart';
import 'package:nirvana/controller/playlist_screen/play_list_screen_bloc.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';

import 'package:nirvana/view/presentation/settings_screen/constants.dart';

import 'package:nirvana/view/widgets/addtoplaylistTile.dart';

class AddToPlaylist extends StatelessWidget {
  AddToPlaylist(
      {Key? key,
      required this.Index,
      required this.audioPlayer,
      required this.songList})
      : super(key: key);
  final String Index;
  final List<Audio> songList;
  final AssetsAudioPlayer audioPlayer;

  TextEditingController editingController = TextEditingController();
  Box<List> playlistBox = getPlaylistBox();
  List playlistcontent = [];
  List _foundedPlaylist = [];

  String? proflieUserName;

  void searchPlaylist(String enteredKeyword) {
    List results = [];
    if (enteredKeyword.isEmpty) {
      results = playlistcontent;
    } else {
      results = playlistBox.keys
          .where((element) => element
              .toString()
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList()
          .cast();
    }
    // setState(() {
    //   _foundedPlaylist = results;
    // });
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PlayListScreenBloc>(context).add(PlaylistNames());
    });

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
                          color: const Color(0xFFD933C3),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
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
              // textFormField(
              //     hinttext: 'Find Playlist',
              //     textEditController: playlistcontroler),
              TextField(
                onChanged: (value) {
                  searchPlaylist(value);
                },
                style: TextStyle(color: Colors.white),
                controller: editingController,
                decoration: InputDecoration(
                  prefixIconColor: Colors.white,
                  hintStyle:
                      TextStyle(color: Color.fromARGB(144, 255, 255, 255)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  fillColor: Color.fromARGB(99, 201, 125, 255),
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: 'Find Playlist',
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView(
                    children: [
                      // ValueListenableBuilder(
                      //   valueListenable: playlistBox.listenable(),
                      //   builder: (context, Box<List> value, child) {
                      //     _foundedPlaylist.removeWhere(
                      //         (element) => element == 'MostPlayed');
                      //     _foundedPlaylist.removeWhere(
                      //         (element) => element == 'LikedSongs');
                      //     _foundedPlaylist.removeWhere(
                      //         (element) => element == 'RecentSongs');
                      //     // String playlist = playlistcontent[]
                      //     return (playlistBox.isEmpty)
                      //         ? Center(
                      //             child: Text(
                      //             'No Playlist Found Please Create One',
                      //             style: TextStyle(color: Colors.white),
                      //           ))
                      //         : ListView.builder(
                      //             shrinkWrap: true,
                      //             physics: ScrollPhysics(),
                      //             itemCount: _foundedPlaylist.length,
                      //             itemBuilder: (context, index) {
                      //               return AddtoPlayListTILE(
                      //                 proflieUserName,
                      //                 ImagePathAddToProfile:
                      //                     'assets/images/PlaylistImage3.jpg',
                      //                 PlaylistTitle: _foundedPlaylist[index],
                      //                 Index: Index,
                      //                 audioPlayer: audioPlayer,
                      //                 songList: [],
                      //                 context: context,
                      //               );
                      //             },
                      //           );
                      //   },
                      // ),

                      // here BlocBuilder

                      BlocBuilder<PlayListScreenBloc, PlayListScreenState>(
                        builder: (context, state) {
                          return (playlistBox.isEmpty)
                              ? const Center(
                                  child: Text(
                                  'No Playlist Found Please Create One',
                                  style: TextStyle(color: Colors.white),
                                ))
                              : ListView.builder(
                                  shrinkWrap: true,
                                  physics: const ScrollPhysics(),
                                  itemCount: state.PlaylistNames.length,
                                  itemBuilder: (context, index) {
                                    return AddtoPlayListTILE(
                                      OldUserName ?? 'Guest',
                                      ImagePathAddToProfile:
                                          'assets/images/PlaylistImage3.jpg',
                                      PlaylistTitle: state.PlaylistNames[index],
                                      Index: Index,
                                      audioPlayer: audioPlayer,
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
