import 'package:flutter/material.dart';
import 'package:nirvana/widgets/playlistTileHomeScreen.dart';
import 'package:nirvana/widgets/songTile.dart';

import 'package:nirvana/widgets/textFormField.dart';

// ignore_for_file: prefer_const_constructors
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var songSearchController;
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
                    'Library',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
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
                      CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/images/Profile_Avatar.png'),
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
                  textEditController: songSearchController),
              SizedBox(
                height: 15,
              ),

              //Start LIstView From Here
              Expanded(
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
                    //Song Tile
                    SongTile(
                      SongTitle: 'Story Of My Life',
                      SongDetails: 'One Direction',
                      SongCoverImage: 'assets/images/StoryOfMyLife.png',
                      StartTimer: '1:12',
                      EndTimer: '2:59',
                    ),
                    SongTile(
                      SongTitle: 'Whats Makes You Beautuful',
                      SongDetails: 'One Direction',
                      SongCoverImage:
                          'assets/images/What_Makes_You_Beautiful_Album_Cover.jpg',
                      StartTimer: '0:00',
                      EndTimer: '3.03',
                    ),
                    SongTile(
                      SongTitle: 'Drag Me Down',
                      SongDetails: 'One Direction',
                      SongCoverImage: 'assets/images/One_Direction_-_Drag_Me_Down_(Official_Single_Cover).png',
                      StartTimer: '0:00',
                      EndTimer: '3:12',
                    ),
                    SongTile(
                      SongTitle: 'Ole Melody',
                      SongDetails: 'Thallumaala',
                      SongCoverImage: 'assets/images/ole meledy.jpg',
                      StartTimer: '0:00',
                      EndTimer: '3:12',
                    ),
                    SongTile(
                      SongTitle: 'Dard E Disco',
                      SongDetails: 'Sukhwindar Singh',
                      SongCoverImage: 'assets/images/dard e disco.jpg',
                      StartTimer: '0:00',
                      EndTimer: '3:12',
                    ),
                    SongTile(
                      SongTitle: 'Kumkummamake',
                      SongDetails: 'Hesham Abdul Wahab',
                      SongCoverImage: 'assets/images/Brahmastra-1b.jpg',
                      StartTimer: '0:00',
                      EndTimer: '3:12',
                    ),
                    SongTile(
                      SongTitle: 'Christmas Eval',
                      SongDetails: 'Stray Kids',
                      SongCoverImage: 'assets/images/christmas.jpg',
                      StartTimer: '0:00',
                      EndTimer: '3:12',
                    ),
                    SongTile(
                      SongTitle: '16 Shots',
                      SongDetails: 'Stefflon Don',
                      SongCoverImage: 'assets/images/16 shots.jpg',
                      StartTimer: '0:00',
                      EndTimer: '3:12',
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
