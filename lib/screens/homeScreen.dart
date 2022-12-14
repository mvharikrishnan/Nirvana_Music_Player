import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/database/songdb.dart';
// import 'package:nirvana/screens/profieScreen.dart';
import 'package:nirvana/screens/recentlyPlayedScreen.dart';
// import 'package:nirvana/widgets/miniMusicPlayer.dart';
import 'package:nirvana/widgets/playlistTileHomeScreen.dart';
import 'package:nirvana/widgets/songTile.dart';

import 'package:nirvana/widgets/textFormField.dart';
import 'package:on_audio_query/on_audio_query.dart';
// import 'package:permission_handler/permission_handler.dart';

// ignore_for_file: prefer_const_constructors
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _audioQurey = new OnAudioQuery();
  final audioPlayer = new AssetsAudioPlayer();
  TextEditingController searchController = new TextEditingController();
  Box<Songs> songBox = Hive.box<Songs>('Songs');
  bool isVisibile =true;

  List<Songs> audioList = [];
  List<Songs> _foundSongs = [];
  @override
  void initState() {
    // TODO: implement initState
    final List<int> Keys = songBox.keys.toList().cast<int>();
    for (var key in Keys) {
      audioList.add(songBox.get(key)!);
    }
    _foundSongs = audioList;
    super.initState();
    //requestPermission();
  }

  //accessig the songBOx
  void searchSongs(String enteredKeyword) {
    List<Songs> results = [];
    if (enteredKeyword.isEmpty) {
      results = audioList;
    } else {
      results = audioList
          .where((element) => element.songTitle
              .toString()
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundSongs = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    //var songSearchController;
    return Scaffold(
      backgroundColor: Color(0xFF3B1F50),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Library',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => RecentlyPlayedScreen(),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.av_timer,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      //change this to make onpressed for circle avatar
                      InkWell(
                        onTap: (() {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (ctx) => ProfileScreen(),
                          //   ),
                          // );
                        }),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage('assets/images/Profile_Avatar.png'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              // textFormField(
              //     hinttext: 'Song or artist',
              //     textEditController: searchController),
              TextField(
                onEditingComplete: () {
                  setState(() {
                    isVisibile = true;
                  });
                },
                onTap: () {
                  setState(() {
                    isVisibile=false;
                  });
                },
                enableSuggestions: true,
                style: TextStyle(color: Colors.white),
                onChanged: (value) => searchSongs(value),
                controller: searchController,
                decoration: InputDecoration(
                  prefixIconColor: Colors.white,
                  hintStyle: TextStyle(color: Color.fromARGB(155, 255, 255, 255)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  fillColor: Color.fromARGB(99, 201, 125, 255),
                  filled: true,
                  prefixIcon: Icon(Icons.search,color: Colors.white,),
                  hintText: 'Song or artist',
                ),
              ),
              SizedBox(
                height: 15,
              ),

              //Start LIstView From Here
              Expanded(
                child: NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (overscroll) {
                    overscroll.disallowIndicator();
                    return true;
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: ListView(
                      children: [
                        Visibility(
                          visible: isVisibile,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Playlist',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10.0),
                                height: 268,
                                width: double.infinity,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    PlaylistHomeScreenTile(
                                      PlaylistCoverIMGPath:
                                          'assets/images/PlaylistImage2.jpg',
                                      PlaylistName: 'Most Played Songs',
                                      songsCountInPlaylist: '8',
                                      playlistKeyTITLE: 'MostPlayed',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              'All Songs',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),

                        //This code below contains the songs that are accecced form the database
                        ValueListenableBuilder(
                          valueListenable: songBox.listenable(),
                          builder: (context, Box<Songs> Songs, Widget? child) {
                            // final keys = Songs.keys.toList();
                            if (Songs.values == null) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            if (Songs.values.isEmpty) {
                              return Center(
                                  child: Text(
                                'No Songs Identified',
                                style: TextStyle(color: Colors.white),
                              ));
                            }
                            return ListView.builder(
                              itemCount: _foundSongs.length,
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              itemBuilder: (context, index) {
                                return SongTile(
                                  Index: index,
                                  audioPlayer: audioPlayer,
                                  //keys: keys,
                                  onpressed: () {},
                                  audioList: _foundSongs,
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
