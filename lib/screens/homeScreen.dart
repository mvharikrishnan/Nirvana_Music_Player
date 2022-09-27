import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:nirvana/screens/profieScreen.dart';
import 'package:nirvana/screens/recentlyPlayedScreen.dart';
import 'package:nirvana/widgets/miniMusicPlayer.dart';
import 'package:nirvana/widgets/playlistTileHomeScreen.dart';
import 'package:nirvana/widgets/songTile.dart';

import 'package:nirvana/widgets/textFormField.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

// ignore_for_file: prefer_const_constructors
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _audioQurey = new OnAudioQuery();
  final _audioPlayer = new AssetsAudioPlayer();
  TextEditingController searchController = new TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    requestPermission();
  }

  void requestPermission() {
    Permission.storage.request();
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
              textFormField(
                  hinttext: 'Song or artist',
                  textEditController: searchController),
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
                                    'assets/images/ArtisticIMage.jpg',
                                PlaylistName: 'My Favorite Music',
                                songsCountInPlaylist: '50',
                              ),
                              PlaylistHomeScreenTile(
                                PlaylistCoverIMGPath:
                                    'assets/images/PlaylistImage2.jpg',
                                PlaylistName: 'Liked Songs',
                                songsCountInPlaylist: '8',
                              ),
                              PlaylistHomeScreenTile(
                                PlaylistCoverIMGPath:
                                    'assets/images/PlaylistImage3.jpg',
                                PlaylistName: 'English Songs',
                                songsCountInPlaylist: '30',
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
                        //Song Tile Starts here -- dummy content
                        // SongTile(
                        //   SongTitle: 'Story Of My Life',
                        //   SongDetails: 'One Direction',
                        //   SongCoverImage: 'assets/images/StoryOfMyLife.png',
                        //   StartTimer: '1:12',
                        //   EndTimer: '2:59',
                        // ),
                        FutureBuilder<List<SongModel>>(
                          future: _audioQurey.querySongs(
                            sortType: SongSortType.DISPLAY_NAME,
                            orderType: OrderType.ASC_OR_SMALLER,
                            uriType: UriType.EXTERNAL,
                            ignoreCase: true,
                          ),
                          builder: (context, items) {
                            if (items.data == null) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            if (items.data!.isEmpty) {
                              return Center(child: Text('No Songs Identified'));
                            }
                            return ListView.builder(
                              itemCount: items.data!.length,
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              itemBuilder: (context, index) {
                                return SongTile(
                                  SongTitle:
                                      items.data![index].displayNameWOExt,
                                  SongDetails:
                                      items.data![index].artist.toString(),
                                  SongCoverImage:
                                      'assets/images/What_Makes_You_Beautiful_Album_Cover.jpg',
                                  // items.data![index].album.toString(),
                                  StartTimer:
                                      items.data![index].duration.toString(),
                                  EndTimer:
                                      items.data![index].duration.toString(),
                                  SongURI: items.data![index].uri.toString(),
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
              GestureDetector(
                child: MiniMusicPlayer(
                  miniSongTitle: 'Story Of My Life',
                  miniSongAuther: 'One Direction',
                  miniImagePath: 'assets/images/StoryOfMyLife.png',
                  miniSongStart: '1:12',
                  miniSongEnd: '2:59',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
