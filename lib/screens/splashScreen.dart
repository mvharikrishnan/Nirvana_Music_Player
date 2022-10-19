import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:hive/hive.dart';
import 'package:nirvana/database/database_functions/dbFunctions.dart';
import 'package:nirvana/database/songdb.dart';
import 'package:nirvana/screens/navigationScreen.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //OnMediaQuery
  OnAudioQuery audioQuery = OnAudioQuery();

  //list for songs and audio accescessed form the storage
  List<SongModel> accescessedSongs = [];

  //list for songs sorted out with extension ending with mp3
  List<SongModel> sortedSongs = [];

  //Referance for playlist box
  Box<List> playlistbox = getPlaylistBox();

  //list for liked songs
  List<Songs> likedSongs = [];

  //List for recent Songs
  List<Songs> RecentSongs = [];

  //lsit for mostPlayed songs
  List<Songs> MostPlayed = [];

  //refering the songBox
  Box<Songs> songBox = getSongBox();

  @override
  void initState() {
    requestPermission();
    accessSongs();
    gotoScreenHome(context);
    super.initState();
  }

  //functions for requseting the songs from the storage
  Future<void> requestPermission() async {
    await Permission.storage.request();
     }

  //function for accescessing the songs form the storage
  Future<void> accessSongs() async {
    final accescessedSongs = await audioQuery.querySongs(
      sortType: SongSortType.DISPLAY_NAME,
      orderType: OrderType.ASC_OR_SMALLER,
      uriType: UriType.EXTERNAL,
      ignoreCase: true,
    );

    if (accescessedSongs == null) {
      print('Storage is empty');
    } else {
      print('Storage has something');
    }

    //for adding the songs to the sorted list
    for (var song in accescessedSongs) {
      if (song.fileExtension == 'mp3' || song.fileExtension == 'm4a') {
        sortedSongs.add(song);
      }
      print('Accessed Songs = ${accescessedSongs.length}');
    }

    //for adding the sorted list to the database
    for (var audio in sortedSongs) {
      final song = Songs(
        songPath: audio.uri!,
        songTitle: audio.title,
        songArtist: audio.artist!,
        id: audio.id,
      );
      await songBox.put(audio.id, song);
    }
    if (songBox.isEmpty) {
      print('Song Box is empty');
    } else {
      print('Song box is not empty ${songBox.length}');
    }
    accesssTheKeysForLikedSongs();
    accessTheKeysForRecentSongs();
    accessTheKeysForMostPlayedSongs();
  }

  Future accesssTheKeysForLikedSongs() async {
    if (!playlistbox.keys.contains('LikedSongs')) {
      await playlistbox.put('LikedSongs', likedSongs);
    }
  }

  Future accessTheKeysForRecentSongs() async {
    if (!playlistbox.keys.contains('RecentSongs')) {
      await playlistbox.put('RecentSongs', RecentSongs);
    }
  }

  Future accessTheKeysForMostPlayedSongs() async {
    if (!playlistbox.keys.contains('MostPlayed')) {
      await playlistbox.put('MostPlayed', MostPlayed);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B1F50),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Connect Music',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'With',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 250.0,
                child: TextLiquidFill(
                  text: 'NIRVANA',
                  waveColor: Colors.white,
                  boxBackgroundColor: Color(0xFF3B1F50),
                  textStyle: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                  boxHeight: 100.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Future<void> gotoScreenHome(BuildContext context) async {
  await Future.delayed(const Duration(seconds: 5));
  // ignore: use_build_context_synchronously
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (ctx) => const Screen_Navigation(),
    ),
  );
}
