import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nirvana/widgets/songTile.dart';

class PlaylistViewingScreen extends StatelessWidget {
  const PlaylistViewingScreen({
    Key? key,
    required this.Title,
    required this.SongCount,
    required this.image,
  }) : super(key: key);
  final String Title;
  final String SongCount;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B1F50),
      body: Column(
        children: [
          Container(
            height: 128,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(70),
                  bottomRight: const Radius.circular(70),
                ),
                // image: DecorationImage(
                //   image: AssetImage(image),
                //   fit: BoxFit.cover,
                // ),
                color: Color.fromARGB(113, 130, 78, 167)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              Text(
                                Title,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                       Padding(
                         padding: const EdgeInsets.only(left: 48),
                         child: Row(
                          children: [
                            Text(
                              SongCount,
                              style: TextStyle(
                                  color: Color(0xFFC87DFF),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                      ),
                       )
                    ],
                  ),
                ),
              ),
            ),
          ),
          //Playlist Start Here
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
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
                        SongCoverImage:
                            'assets/images/One_Direction_-_Drag_Me_Down_(Official_Single_Cover).png',
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
          )
        ],
      ),
    );
  }
}
