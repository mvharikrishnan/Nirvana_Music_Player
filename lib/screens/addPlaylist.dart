import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nirvana/widgets/addtoplaylistTile.dart';
import 'package:nirvana/widgets/textFormField.dart';

class AddToPlaylist extends StatelessWidget {
  const AddToPlaylist({Key? key}) : super(key: key);

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
                Container(
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
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            textFormField(
                hinttext: 'Find Playlist',
                textEditController: playlistcontroler),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  AddtoPlayListTILE(
                    'Harikrishnan MV',
                    ImagePathAddToProfile: 'assets/images/PlaylistImage2.jpg',
                    PlaylistTitle: 'Malayalam Hits',
                  ),
                  AddtoPlayListTILE(
                    'Harikrishnan MV',
                    ImagePathAddToProfile: 'assets/images/PlaylistImage3.jpg',
                    PlaylistTitle: 'English Evergreen',
                  ),
                  AddtoPlayListTILE(
                    'Harikrishnan MV',
                    ImagePathAddToProfile: 'assets/images/ArtisticIMage.jpg',
                    PlaylistTitle: 'Favorite Music',
                  ),
                  AddtoPlayListTILE(
                    'Harikrishnan MV',
                    ImagePathAddToProfile: 'assets/images/Art.jpg',
                    PlaylistTitle: 'Top Music #2022',
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
