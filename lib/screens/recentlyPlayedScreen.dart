import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nirvana/widgets/playlistRecenltyTile.dart';

class RecentlyPlayedScreen extends StatelessWidget {
  const RecentlyPlayedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B1F50),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Recently Played',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: NotificationListener<OverscrollIndicatorNotification>(
                    onNotification: (overScroll) {
                    overScroll.disallowIndicator();
                    return true;
                  },
                    child: ListView(
                                  children: [
                    PlaylistRecentlyTile(
                      SongTitle: 'Story Of My Life',
                      SongDetails: 'One Direction',
                      SongCoverImage: 'assets/images/StoryOfMyLife.png',
                      StartTimer: '1:12',
                      EndTimer: '2:59',
                    ),
                    PlaylistRecentlyTile(
                      SongTitle: 'Whats Makes You Beautuful',
                      SongDetails: 'One Direction',
                      SongCoverImage:
                          'assets/images/What_Makes_You_Beautiful_Album_Cover.jpg',
                      StartTimer: '0:00',
                      EndTimer: '3.03',
                    ),
                    PlaylistRecentlyTile(
                      SongTitle: 'Drag Me Down',
                      SongDetails: 'One Direction',
                      SongCoverImage:
                          'assets/images/One_Direction_-_Drag_Me_Down_(Official_Single_Cover).png',
                      StartTimer: '0:00',
                      EndTimer: '3:12',
                    ),
                    PlaylistRecentlyTile(
                      SongTitle: 'Ole Melody',
                      SongDetails: 'Thallumaala',
                      SongCoverImage: 'assets/images/ole meledy.jpg',
                      StartTimer: '0:00',
                      EndTimer: '3:12',
                    ),
                    PlaylistRecentlyTile(
                      SongTitle: 'Dard E Disco',
                      SongDetails: 'Sukhwindar Singh',
                      SongCoverImage: 'assets/images/dard e disco.jpg',
                      StartTimer: '0:00',
                      EndTimer: '3:12',
                    ),
                    PlaylistRecentlyTile(
                      SongTitle: 'Kumkummamake',
                      SongDetails: 'Hesham Abdul Wahab',
                      SongCoverImage: 'assets/images/Brahmastra-1b.jpg',
                      StartTimer: '0:00',
                      EndTimer: '3:12',
                    ),
                    PlaylistRecentlyTile(
                      SongTitle: 'Christmas Eval',
                      SongDetails: 'Stray Kids',
                      SongCoverImage: 'assets/images/christmas.jpg',
                      StartTimer: '0:00',
                      EndTimer: '3:12',
                    ),
                    PlaylistRecentlyTile(
                      SongTitle: '16 Shots',
                      SongDetails: 'Stefflon Don',
                      SongCoverImage: 'assets/images/16 shots.jpg',
                      StartTimer: '0:00',
                      EndTimer: '3:12',
                    ),
                      PlaylistRecentlyTile(
                      SongTitle: 'Whats Makes You Beautuful',
                      SongDetails: 'One Direction',
                      SongCoverImage:
                          'assets/images/What_Makes_You_Beautiful_Album_Cover.jpg',
                      StartTimer: '0:00',
                      EndTimer: '3.03',
                    ),
                    PlaylistRecentlyTile(
                      SongTitle: 'Drag Me Down',
                      SongDetails: 'One Direction',
                      SongCoverImage:
                          'assets/images/One_Direction_-_Drag_Me_Down_(Official_Single_Cover).png',
                      StartTimer: '0:00',
                      EndTimer: '3:12',
                    ),
                    PlaylistRecentlyTile(
                      SongTitle: 'Ole Melody',
                      SongDetails: 'Thallumaala',
                      SongCoverImage: 'assets/images/ole meledy.jpg',
                      StartTimer: '0:00',
                      EndTimer: '3:12',
                    ),
                    PlaylistRecentlyTile(
                      SongTitle: 'Dard E Disco',
                      SongDetails: 'Sukhwindar Singh',
                      SongCoverImage: 'assets/images/dard e disco.jpg',
                      StartTimer: '0:00',
                      EndTimer: '3:12',
                    ),
                    PlaylistRecentlyTile(
                      SongTitle: 'Kumkummamake',
                      SongDetails: 'Hesham Abdul Wahab',
                      SongCoverImage: 'assets/images/Brahmastra-1b.jpg',
                      StartTimer: '0:00',
                      EndTimer: '3:12',
                    ),
                    PlaylistRecentlyTile(
                      SongTitle: 'Christmas Eval',
                      SongDetails: 'Stray Kids',
                      SongCoverImage: 'assets/images/christmas.jpg',
                      StartTimer: '0:00',
                      EndTimer: '3:12',
                    ),
                    PlaylistRecentlyTile(
                      SongTitle: '16 Shots',
                      SongDetails: 'Stefflon Don',
                      SongCoverImage: 'assets/images/16 shots.jpg',
                      StartTimer: '0:00',
                      EndTimer: '3:12',
                    ),
                                  ],
                                ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
