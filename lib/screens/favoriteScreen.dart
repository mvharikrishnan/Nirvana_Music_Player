import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/songTile.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Favorite',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '8 Songs',
                    style: TextStyle(color: Color(0xFFC87DFF), fontSize: 15),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Expanded(child: ListView(
                children: [
                  // SongTile(
                  //       SongTitle: 'Story Of My Life',
                  //       SongDetails: 'One Direction',
                  //       SongCoverImage: 'assets/images/StoryOfMyLife.png',
                  //       StartTimer: '1:12',
                  //       EndTimer: '2:59',
                  //     ),
                  //     SongTile(
                  //       SongTitle: 'Whats Makes You Beautuful',
                  //       SongDetails: 'One Direction',
                  //       SongCoverImage:
                  //           'assets/images/What_Makes_You_Beautiful_Album_Cover.jpg',
                  //       StartTimer: '0:00',
                  //       EndTimer: '3.03',
                  //     ),
                  //     SongTile(
                  //       SongTitle: 'Drag Me Down',
                  //       SongDetails: 'One Direction',
                  //       SongCoverImage:
                  //           'assets/images/One_Direction_-_Drag_Me_Down_(Official_Single_Cover).png',
                  //       StartTimer: '0:00',
                  //       EndTimer: '3:12',
                  //     ),
                  //     SongTile(
                  //       SongTitle: 'Ole Melody',
                  //       SongDetails: 'Thallumaala',
                  //       SongCoverImage: 'assets/images/ole meledy.jpg',
                  //       StartTimer: '0:00',
                  //       EndTimer: '3:12',
                  //     ),
                  //     SongTile(
                  //       SongTitle: 'Dard E Disco',
                  //       SongDetails: 'Sukhwindar Singh',
                  //       SongCoverImage: 'assets/images/dard e disco.jpg',
                  //       StartTimer: '0:00',
                  //       EndTimer: '3:12',
                  //     ),
                  //     SongTile(
                  //       SongTitle: 'Drag Me Down',
                  //       SongDetails: 'One Direction',
                  //       SongCoverImage:
                  //           'assets/images/One_Direction_-_Drag_Me_Down_(Official_Single_Cover).png',
                  //       StartTimer: '0:00',
                  //       EndTimer: '3:12',
                  //     ),
                  //     SongTile(
                  //       SongTitle: 'Ole Melody',
                  //       SongDetails: 'Thallumaala',
                  //       SongCoverImage: 'assets/images/ole meledy.jpg',
                  //       StartTimer: '0:00',
                  //       EndTimer: '3:12',
                  //     ),
                  //     SongTile(
                  //       SongTitle: 'Dard E Disco',
                  //       SongDetails: 'Sukhwindar Singh',
                  //       SongCoverImage: 'assets/images/dard e disco.jpg',
                  //       StartTimer: '0:00',
                  //       EndTimer: '3:12',
                  //     ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
