import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nirvana/widgets/playlistGridTile.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({Key? key}) : super(key: key);

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
                    'Playlist',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: GridView.count(
                  
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: [
                    PlaylistGridTile(
                        PlaylistTitle: 'Liked Songs',
                        PlaylistSongCount: '8 Songs',
                        PlaylistBackgroundImage:
                            'assets/images/ArtisticIMage.jpg'),
                    PlaylistGridTile(
                        PlaylistTitle: 'Malayalam Songs',
                        PlaylistSongCount: '10 Songs',
                        PlaylistBackgroundImage:
                            'assets/images/PlaylistImage3.jpg'),
                    PlaylistGridTile(
                        PlaylistTitle: 'English Evergreen',
                        PlaylistSongCount: '10 Songs',
                        PlaylistBackgroundImage:
                            'assets/images/PlaylistImage2.jpg'),
                    PlaylistGridTile(
                        PlaylistTitle: 'My Favorite Songs',
                        PlaylistSongCount: '30 Songs',
                        PlaylistBackgroundImage:
                            'assets/images/Vaporwave Lamborghini.jpg'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
